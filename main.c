#include<stdio.h>
#include<stdlib.h>
#include<string.h>

static void error(const char* msg, int line) {
    fprintf(stderr, "erro %s na linha %d\n", msg, line);
    exit(EXIT_FAILURE);
}

int IntToChar(unsigned char* codigo, int pos, int num)
{
    unsigned char* p = (unsigned char*)&num;
    for (int i = 0; i < sizeof(int); i++) {
        codigo[pos] = p[i]; //adiciona os bytes do número no array
        pos++;
    }
    return pos; 
}

void Compara(int resposta, int resposta_exata)
{
    if (resposta == resposta_exata)
        printf("\nOs valores sao iguais!\n");
    else
        printf("\nOs valores nao sao iguais!\n");
}

int Movl(unsigned char* codigo, char origem, int n_origem, int n_dest , int pos) //origem: dizer se será movido uma constante ($), variável (v) ou parâmetro (p); n_origem: qual parâmetro (1,2,3) ou variável (1,2,3,4,5); n_dest: variável de destino
{
    if (origem == '$')
    {
        codigo[pos++] = 0x41;
        unsigned char codigo_const[] = { 0xbb,0xbc,0xbd,0xbe,0xbf };
        codigo[pos++] = codigo_const[n_dest - 1]; //ex: se for mover uma constante p var1 (i.e. n_dest = 1), então pega o primeiro termo do array = array[0]
    }

    unsigned char operacoes[6][5] = { // [linha][coluna] 
        { 0xdb, 0xdc, 0xdd, 0xde, 0xdf }, // %r11d, %r1_d  
        { 0xe3, 0xe4, 0xe5, 0xe6, 0xe7 },
        { 0xeb, 0xec, 0xed, 0xee, 0xef }, 
        { 0xf3, 0xf4, 0xf5, 0xf6, 0xf7 },
        { 0xfb, 0xfc, 0xfd, 0xfe, 0xff },
        { 0xd3, 0xd4 ,0xd5 ,0xd6 ,0xd7 } 
    };

    if (origem == 'p')
    {
        codigo[pos++] = 0x41;
        codigo[pos++] = 0x89;

        /* 
        p1 = {0xfb,0xfc,0xfd,0xfe,0xff};
        p2 = { 0xf3,0xf4,0xf5,0xf6,0xf7};
        p3 = { 0xd3,0xd4,0xd5,0xd6,0xd7 }; 
        */

        if (n_origem == 1) //p1
            codigo[pos++] = operacoes[4][n_dest - 1];
        else if (n_origem == 2) //p2
            codigo[pos++] = operacoes[3][n_dest - 1];
        else //p3
            codigo[pos++] = operacoes[5][n_dest - 1]; 
    }
    else
    {
        codigo[pos++] = 0x45;
        codigo[pos++] = 0x89;
        codigo[pos++] = operacoes[n_origem-1][n_dest - 1];
    }
    return pos;
}

int Operacao(unsigned char* codigo, char op, int n_origem,int n_dest, int pos)
{
    codigo[pos++] = 0x45;

    unsigned char operacoes[5][5] = {
            { 0xdb, 0xdc, 0xdd, 0xde, 0xdf }, //%r11d, %r1_d 
            { 0xe3, 0xe4, 0xe5, 0xe6, 0xe7 },
            { 0xeb, 0xec, 0xed, 0xee, 0xef },
            { 0xf3, 0xf4, 0xf5, 0xf6, 0xf7 },
            { 0xfb, 0xfc, 0xfd, 0xfe, 0xff }
    };

    if (op == '+')
        codigo[pos++] = 0x01;
    else if (op == '-')
        codigo[pos++] = 0x29;
    else //op = '*'
    {
        codigo[pos++] = 0x0f;
        codigo[pos++] = 0xaf;
    }
    codigo[pos++] = operacoes[n_origem - 1][n_dest - 1]; 
    return pos;
}

int main(void) {
    int line = 1;
    int  c;
    FILE* myfp = fopen("ret.txt", "r"); 
    unsigned char codigo[156]; //arq tem no máximo 30 linha (i.e, 30 comandos) q tem no máximo 5 bytes -> 150bytes. Mas tem ainda os comandos p alocar o RA e terminar (pushq + movq + leave + ret) -> 150 + 6 

    if (myfp == NULL) {
        perror("nao conseguiu abrir arquivo!"); 
        exit(1); 
    }
    unsigned char reg[] = { 0x5c, 0x64, 0x6c, 0x74, 0x7c };
    unsigned char localizacao[] = { 0xf8, 0xf0, 0xe8, 0xe0, 0xd8 }; //8, 16, 24, 32, 40
    int pos = 0; 
    // Montando o RA 
   
    //pushq:
    codigo[pos++] = 0x55;

    //movq %rbp, %rbp:
    codigo[pos++] = 0x48; codigo[pos++] = 0x89; codigo[pos++] = 0xe5; 

    //sub $48,%rsp -> para alocar espaço para os 5 registradores que podem ser utilizados 
    codigo[pos++] = 0x48; codigo[pos++] = 0x83; codigo[pos++] = 0xec; codigo[pos++] = 0x30;

    //movq %r1_, -x(%rsp)
    codigo[pos++] = 0x4c; codigo[pos++] = 0x89;
    for (int i = 0; i < 5; i++)
    {
        codigo[pos++] = reg[i];
        codigo[pos++] = 0x24;
        codigo[pos++] = localizacao[i]; 
    }
    
    while ((c = fgetc(myfp)) != EOF) { 
        switch (c) {
        case 'r': { /* retorno */
            char var0;
            int idx0;
            if (fscanf(myfp, "et %c%d", &var0, &idx0) != 2)
                error("comando invalido", line);
            printf("%d ret %c%d\n", line, var0, idx0);

            if (var0 == '$') //retorna uma constante
            {
                codigo[pos++] = 0xb8;  //mov %eax 
                pos = IntToChar(codigo, pos, idx0); //add os bytes da constante
            }
            else //retorna uma variável
            {
                codigo[pos++] = 41;
                codigo[pos++] = 89;
                unsigned char ret[] = { 0xc3,0xc4,0xc5,0xc6,0xc7 };
                codigo[pos++] = ret[idx0 - 1];
            }
            break;
        }

        case 'v': { /* atribuição e op. aritmetica */
            int idx0, idx1;
            char var0 = c, c0, var1;
            if (fscanf(myfp, "%d %c", &idx0, &c0) != 2)
                error("comando invalido", line);

            if (c0 == ':') { /* atribuição */
                if (fscanf(myfp, " %c%d", &var1, &idx1) != 2)
                    error("comando invalido", line);
                printf("%d %c%d : %c%d\n", line, var0, idx0, var1, idx1);

                pos = Movl(codigo, var1, idx1, idx0, pos);
                if (var1 == '$')
                    pos = IntToChar(codigo, pos, idx1); //add os bytes da constante  
  
            }
            else { /* operação aritmética */
                char var2, op;
                int idx2;
                if (c0 != '=')
                    error("comando invalido", line);
                if (fscanf(myfp, " %c%d %c %c%d", &var1, &idx1, &op, &var2, &idx2) != 5)
                    error("comando invalido", line);
                printf("%d %c%d = %c%d %c %c%d\n",
                    line, var0, idx0, var1, idx1, op, var2, idx2);

                pos = Movl(codigo, var2, idx2, idx1, pos); //move o valor depois de op para a variável de destino
                pos = Operacao(codigo, op, idx2, idx0, pos); //operação entre a variável de destino e a que vem antes de op

            }
            break;
        }
        case 'i': { /* desvio condicional */
            char var0;
            int idx0, n;
            if (fscanf(myfp, "flez %c%d %d", &var0, &idx0, &n) != 3)
                error("comando invalido", line);
            printf("%d iflez %c%d %d\n", line, var0, idx0, n);
            break;
        }

        default: error("comando desconhecido", line);
        }
        line++;
        fscanf(myfp, " ");
    }

    //movq -x(%rsp), %r1_
    codigo[pos++] = 0x4c; codigo[pos++] = 0x8b;
    for (int i = 0; i < 5; i++)
    {
        codigo[pos++] = reg[i];
        codigo[pos++] = 0x24;
        codigo[pos++] = localizacao[i]; 
    }

    codigo[pos++] = 0xc9; //leave
    codigo[pos] = 0xc3; //ret 

    fclose(myfp);
    typedef int (*funcp) (); 
    funcp funcaoSBas = (funcp)codigo;  
    int resposta = (*funcaoSBas)();
    Compara(resposta, 100);

    return 0;
}
