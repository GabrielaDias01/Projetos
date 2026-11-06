#include <stdio.h>
#include <locale.h>
#include <string.h>

//O buffer é uma área temporária da memória utilizada para armazenar dados antes 
//serem processados.
//Quando o usuário digita informações no teclado, alguns caracteres podem 
//permanecer armazenados nesse buffer, principalmente o caractere:
//muito utilizado em entrada e saída.

int main(){
	/*char nome[60];*/
	
	setlocale(LC_ALL, "Portuguese");
	
	/*printf("Entre com seu nome: ");
	fflush(stdin); //Limpa buffer de teclado.
	fgets(nome, sizeof(nome), stdin); //captura os caracteres via teclado.
	nome [strlen(nome)-1] = '\0'; //Elimina o salto de linha que é incluído pela função fgets;
	
	printf("\nSeu nome é %s.", nome);*/
	
//===============================================================Manipulação de Strings============================================================================
//Função strcpy() cria uma String origem para uma String destino
//Sintaxe: strcpy(string_dest, string_orig);

	/*char texto[200], novotexto[200], console[20];
	printf("Digite o texto: ");
	gets(texto);
	strcpy(novotexto, texto);
	strcpy(console, "Adeus");
	printf("%s %s", console, novotexto);*/
	
//Função strcat() comcatena uma string com outra.
//Sintaxe: strcat(string_resultado, string_adicionada);

	/*char texto[200], novotexto[200] = "Meu livro ";
	printf("Digite o texto: ");
	gets(texto);
	strcat(novotexto, texto);
	printf("%s", novotexto);*/
	
//Função strcmp() compara uma string com outra
//Retorno da função:
//0, se s1 for igual a s2.
//<0 se s1 for menor que s2.
//>0 se s1 for maior que s2.

	/*char texto1 [100], texto2[200];
	printf("Digite o primeiro texto: ");
	gets(texto1);
	printf("Digite o segundo texto: ");
	gets(texto2);
	
	if (strcmp(texto1, texto2) == 0)
		printf("As string são iguais");
	else
		printf("As strings são diferentes");*/
	
//Função strlwr() converte uma string em minúscula.
//Sintaxe: strlwr(nome_string);
//Função strupr()
//Sintaxe: strupr(nome_string);
//Funções da biblioteca ctype.h

//Função  atoi() da biblioteca stdlib recebe uma string decimal e devolve o correspondente int.

	/*int i;
	char numero[7];
	printf("Entre com uma string decimal: ");
	fgets(numero, sizeof(numero), stdin);
	numero[strlen(numero)-1]= `\0´;
	
	i = atoi(numero);
	printf("%d", i);*/
	
	/*int idade;
	char nome[30];
	
	printf("Digite sua idade: ");
	scanf("%d", &idade);
	
	fflush(stdin);
	
	printf("Digite seu nome: ");
	scanf("%s", nome);
	
	printf("\nNome: %s", nome);
	printf("\nIdade: %d", idade);
	
	return 0; */

//===============================================================Matrizes===========================================================================================
//Cadastrar e exibir nomes utilizando matriz string.
	/*char nomes[3][20];
	int i;
	
	for(i = 0; i < 3; i++){
		printf("Digite um nome: ");
		scanf("%19[^\n]", nomes[i]);
		fflush(stdin);
	}
	printf("\nNomes cadastrados:\n");
	for(i = 0; i < 3; i++){
		printf("%s\n", nomes[i]);
	}
	return 0;*/
	
//Cadastrar nomes de alunos em 2 turmas.

	/*char alunos[2][3][20];
	int turma, aluno;
	
	for(turma = 0; turma < 2; turma++){
		printf("\nTurma%d\n", turma + 1);
		for(aluno = 0; aluno < 3; aluno++){
			printf("Digite o nome do aluno: ");
			scanf("%19[^\n]", alunos[turma][aluno]);
			fflush(stdin);
		}
	}
	printf("\n===LISTA DE ALUNOS===\n");
	for(turma =0; turma < 2; turma++){
		printf("\nTurma %d\n", turma + 1);
		for(aluno = 0; aluno < 3; aluno++){
			printf("%s\n", alunos[turma][aluno]);
		}
	}
	return 0;*/
	
//Exercício 1:

	/*int func[5][3];
	int l, c;

	setlocale(LC_ALL, "Portuguese");

	for(l=0; l<5;l++){
		printf("Entre com os dados do funcionário %d:\n", l+1);
		printf("Digite o código do funcionário: ");
		scanf("%d", &func[l][0]);
		fflush(stdin);
 
		printf("Dias de trabalho no mês: ");
		scanf("%d", &func[l][1]);
		fflush(stdin);			
 
		printf("Total de faltas no trabalho: ");
		scanf("%d", &func[l][2]);
		fflush(stdin);	

		printf("\n");	*
 
	}

	///// relatorio de saida

	for(l=0; l < 5; l++){
		printf("Funcionário %d dos %d dias trabalhou %d dias.\n", func[l][0], func[l][1], func[l][1] - func[l][2] );
	}*/
 
}

