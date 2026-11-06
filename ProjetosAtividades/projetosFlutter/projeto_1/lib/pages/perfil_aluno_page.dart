// Importa os componentes visuais do Flutter.
import 'package:flutter/material.dart';

// Criação da tela PerfilAlunoPage.
// Ela herda de StatelessWidget porque, neste primeiro exemplo,
// a tela é estática, ou seja, não muda durante o uso.
class PerfilAlunoPage extends StatelessWidget {
  // Construtor da tela.
  const PerfilAlunoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // O método build monta a interface visual da tela.
    return Scaffold(
      // AppBar cria a barra superior da tela.
      appBar: AppBar(
        // Texto exibido no topo da tela.
        title: const Text('Perfil do Aluno'),

        // Cor de fundo da barra superior.
        backgroundColor: Colors.indigo,

        // Cor do texto e dos ícones da AppBar.
        foregroundColor: Colors.white,
      ),

      // body representa a área principal da tela.
      body: Padding(
        // Cria espaçamento interno de 24 pixels em todos os lados.
        padding: const EdgeInsets.all(24),

        // Column organiza os elementos verticalmente,
        // ou seja, um abaixo do outro.
        child: Column(
          // Centraliza os elementos no eixo horizontal.
          crossAxisAlignment: CrossAxisAlignment.center,

          // Lista de widgets que serão exibidos na tela.
          children: [
            // Ícone grande representando o perfil do aluno.
            const Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.indigo,
            ),

            // Espaçamento entre o ícone e o nome.
            const SizedBox(height: 16),

            // Nome do aluno.
            const Text(
              'Gabilinda',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Espaçamento entre o nome e o curso.
            const SizedBox(height: 8),

            // Curso do aluno.
            const Text(
              'Técnico em Desenvolvimento de Sistemas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            // Espaçamento antes do bloco da UC12.
            const SizedBox(height: 24),

            // Container cria uma área visual destacada.
            Container(
              // Espaçamento interno dentro do bloco.
              padding: const EdgeInsets.all(16),

              // Decoração visual do Container.
              decoration: BoxDecoration(
                // Cor de fundo clara.
                color: Colors.indigo.shade50,

                // Bordas arredondadas.
                borderRadius: BorderRadius.circular(12),
              ),

              // Row organiza os elementos horizontalmente.
              child: const Row(
                children: [
                  // Ícone de escola.
                  Icon(
                    Icons.school,
                    color: Colors.indigo,
                  ),

                  // Espaçamento horizontal entre o ícone e o texto.
                  SizedBox(width: 12),

                  // Expanded faz o texto ocupar o espaço restante da linha.
                  Expanded(
                    child: Text(
                      'UC12 - Interface, usabilidade e aplicação mobile',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),

            // Espaçamento antes do botão.
            const SizedBox(height: 24),

            // SizedBox define o tamanho do botão.
            SizedBox(
              // Faz o botão ocupar toda a largura disponível.
              width: double.infinity,

              // Define a altura do botão.
              height: 50,

              // Botão visual.
              child: ElevatedButton(
                // Quando onPressed é null, o botão fica desabilitado.
                // Neste primeiro momento, ele ainda não executa ação.
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Informações do aluno exibidas!'),
                      ),
                  );
                },

                // Texto dentro do botão.
                child: const Text('Ver informações'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}