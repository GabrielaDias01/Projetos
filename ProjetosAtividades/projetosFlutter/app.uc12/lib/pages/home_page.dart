// Importa o pacote Material Design do Flutter.
import 'package:flutter/material.dart';

// Importa a tela de cadastro.
// A HomePage terá um botão para abrir essa tela.
import 'cadastro_page.dart';

// Criação da tela HomePage.
// Ela será exibida após o login.
class HomePage extends StatelessWidget {
  // Construtor da classe HomePage.
  const HomePage({super.key});

  // Método responsável por construir a interface da tela.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar é a barra superior da aplicação.
      appBar: AppBar(
        // Título exibido na barra superior.
        title: const Text('Home'),

        // Cor de fundo da AppBar.
        backgroundColor: Colors.indigo,

        // Cor do texto e dos ícones da AppBar.
        foregroundColor: Colors.white,
      ),

      // Corpo principal da tela.
      body: Padding(
        // Espaçamento interno de 24 pixels.
        padding: const EdgeInsets.all(24),

        // Column organiza os widgets na vertical.
        child: Column(
          // Centraliza os elementos horizontalmente.
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            // Ícone ilustrativo da tela inicial.
            const Icon(
              Icons.home,
              size: 90,
              color: Colors.indigo,
            ),

            // Espaço entre o ícone e o título.
            const SizedBox(height: 20),

            // Texto de boas-vindas.
            const Text(
              'Bem-vindo ao App UC12!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            // Espaço entre os textos.
            const SizedBox(height: 12),

            // Texto explicativo.
            const Text(
              'Nesta tela, você poderá acessar as funcionalidades principais do aplicativo.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),

            // Espaço antes dos botões.
            const SizedBox(height: 32),

            // Botão para acessar a tela de cadastro.
            SizedBox(
              // Faz o botão ocupar toda a largura disponível.
              width: double.infinity,

              // Define a altura do botão.
              height: 50,

              // Botão com ícone e texto.
              child: ElevatedButton.icon(
                // Ao clicar no botão, abre a CadastroPage.
                onPressed: () {
                  // Navigator.push abre uma nova tela.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CadastroPage(),
                    ),
                  );
                },

                // Ícone exibido dentro do botão.
                icon: const Icon(Icons.person_add),

                // Texto exibido dentro do botão.
                label: const Text('Cadastrar aluno'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}