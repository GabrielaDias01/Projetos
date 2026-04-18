#Funçãosaudação
import math


def saudacao(nome):
    print(f"Olá, {nome}! Seja bem-vindo(a)\n")

saudacao("Gabriela")

print()

#Soma e Produto
def soma_produto(a,b):
    return a+b , a*b
    

resultado = soma_produto(10,6)
print(resultado)

print()

#Função com escopo local

def variavel_nova(variavel):
    valor = variavel

    print(valor)

print()

#Argumentos padrões

def conta_palavras(frase = input("Digite uma frase: ")):
    palavras = frase.split(' ')
    print(palavras)

conta_palavras()

print()

#Função Lambda
numeros =[2,4,6,8,10]
divisao =list(map(lambda a : a ** 2, numeros))
print(divisao)

print()

#fiubonacci
def recursao (n):
    if n == 1:
        return n
    elif n == 0:
        return n
    else:
        return recursao(n -1) + recursao(n -2)
print(recursao(6))
























