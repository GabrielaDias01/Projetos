#Crie um módulo chamado minha_calculadora.py com funções para soma, subtração, multiplicação e divisão(tratando divisão por 0).

def soma(a,b):
    print("A soma dos valores é: ", a + b)

def subtracao(a,b):
    print("A subtração dos valores é: ", a - b)

def multiplicacao(a,b):
    print("A divisão dos valores é: ", a * b)

def divisao(a,b):
    if a or b == 0:
        print("Não é possível fazer divisão por 0")
    else:
        print("A divisão dos valores é: ", a / b)