// Importa o pacote principal do Flutter
import 'package:flutter/material.dart';

// Tela de operações matemáticas
class OperacoesPage extends StatefulWidget {
  const OperacoesPage({super.key});

  @override
  State<OperacoesPage> createState() => _OperacoesPageState();
}

// Classe responsável por controlar o estado da tela
class _OperacoesPageState extends State<OperacoesPage> {
  // Controllers são usados para capturar o texto digitado nos TextFields
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();

  // Variável que armazenará o resultado da operação
  String resultado = 'Resultado aparecerá aqui';

  // Método para limpar os campos
  void limparCampos() {
    setState(() {
      numero1Controller.clear();
      numero2Controller.clear();
      resultado = 'Resultado aparecerá aqui';
    });
  }

  // Método responsável por realizar as operações matemáticas
  void calcular(String operacao) {
    // Converte o texto digitado para número decimal
    // O tryParse evita erro caso o usuário digite texto inválido
    double? numero1 = double.tryParse(numero1Controller.text);
    double? numero2 = double.tryParse(numero2Controller.text);

    // Verifica se os campos foram preenchidos corretamente
    if (numero1 == null || numero2 == null) {
      setState(() {
        resultado = 'Digite dois números válidos.';
      });
      return;
    }

    // Variável que armazenará o cálculo
    double calculo;

    // Estrutura condicional para verificar qual operação foi escolhida
    if (operacao == 'soma') {
      calculo = numero1 + numero2;

      setState(() {
        resultado = 'Resultado da soma: $calculo';
      });
    } else if (operacao == 'subtracao') {
      calculo = numero1 - numero2;

      setState(() {
        resultado = 'Resultado da subtração: $calculo';
      });
    } else if (operacao == 'multiplicacao') {
      calculo = numero1 * numero2;

      setState(() {
        resultado = 'Resultado da multiplicação: $calculo';
      });
    } else if (operacao == 'divisao') {
      // Antes de dividir, verifica se o segundo número é zero
      if (numero2 == 0) {
        setState(() {
          resultado = 'Não é possível dividir por zero.';
        });
      } else {
        calculo = numero1 / numero2;

        setState(() {
          resultado = 'Resultado da divisão: ${calculo.toStringAsFixed(2)}';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior da tela
      appBar: AppBar(
        title: const Text('Operações Matemáticas'),
        centerTitle: true,
      ),

      // Corpo da tela
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.functions,
                size: 90,
                color: Colors.indigo,
              ),

              const SizedBox(height: 20),

              const Text(
                'Informe dois números e escolha uma operação matemática.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Primeiro campo de entrada
              TextField(
                controller: numero1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Primeiro número',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.looks_one),
                ),
              ),

              const SizedBox(height: 20),

              // Segundo campo de entrada
              TextField(
                controller: numero2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Segundo número',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.looks_two),
                ),
              ),

              const SizedBox(height: 30),

              // Botão de soma
              ElevatedButton(
                onPressed: () {
                  calcular('soma');
                },
                child: const Text(
                  'Somar',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 10),

              // Botão de subtração
              ElevatedButton(
                onPressed: () {
                  calcular('subtracao');
                },
                child: const Text(
                  'Subtrair',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 10),

              // Botão de multiplicação
              ElevatedButton(
                onPressed: () {
                  calcular('multiplicacao');
                },
                child: const Text(
                  'Multiplicar',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 10),

              // Botão de divisão
              ElevatedButton(
                onPressed: () {
                  calcular('divisao');
                },
                child: const Text(
                  'Dividir',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 20),

              // Botão para limpar os campos
              OutlinedButton(
                onPressed: limparCampos,
                child: const Text(
                  'Limpar',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(height: 30),

              // Área onde o resultado será exibido
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.indigo),
                ),
                child: Text(
                  resultado,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}