// Importa o pacote Material Design do Flutter.
import 'package:flutter/material.dart';

// Importa a HomePage.
// Após o login, o usuário será direcionado para essa tela.
import 'home_page.dart';

// Criação da tela de login.
// Utilizamos StatefulWidget porque a tela possui controladores de texto.
class LoginPage extends StatefulWidget {
  // Construtor da classe LoginPage.
  const LoginPage({super.key});

  // Cria o estado da tela de login.
  @override
  State<LoginPage> createState() => _LoginPageState();
}

// Classe responsável pelo estado da LoginPage.
// Aqui ficam os controladores, métodos e interface da tela.
class _LoginPageState extends State<LoginPage> {
  // Controlador do campo usuário.
  // Ele permite acessar o texto digitado pelo usuário.
  final TextEditingController usuarioController = TextEditingController();

  // Controlador do campo senha.
  // Ele permite acessar a senha digitada pelo usuário.
  final TextEditingController senhaController = TextEditingController();

  // Método chamado quando o usuário clica no botão "Entrar".
  void entrar() {
    // Verifica se o campo usuário está vazio ou se o campo senha está vazio.
    if (usuarioController.text.isEmpty || senhaController.text.isEmpty) {
      // Exibe uma mensagem na parte inferior da tela.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha usuário e senha'),
        ),
      );

      // O return encerra o método aqui.
      // Assim, o usuário não será direcionado para a HomePage.
      return;
    }

    // Validação simples para verificar se a senha possui pelo menos 6 caracteres.
    if (senhaController.text.length < 6) {
      // Exibe uma mensagem informando o problema.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('A senha deve ter pelo menos 6 caracteres'),
        ),
      );

      // Interrompe o método caso a senha seja inválida.
      return;
    }

    // Se os campos estiverem preenchidos corretamente,
    // o usuário será direcionado para a HomePage.
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  // O método dispose() é chamado quando a tela é removida da memória.
  // Ele serve para liberar os controladores e evitar consumo desnecessário.
  @override
  void dispose() {
    // Libera o controlador do campo usuário.
    usuarioController.dispose();

    // Libera o controlador do campo senha.
    senhaController.dispose();

    // Chama o dispose da classe pai.
    super.dispose();
  }

  // Método responsável por construir a interface da tela.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Corpo principal da tela.
      body: Padding(
        // Define espaçamento interno de 24 pixels em todos os lados.
        padding: const EdgeInsets.all(24),

        // Center centraliza o conteúdo na tela.
        child: Center(
          // SingleChildScrollView permite rolagem caso a tela fique pequena.
          // Isso evita erro de overflow quando o teclado aparece.
          child: SingleChildScrollView(
            // Column organiza os widgets na vertical.
            child: Column(
              // Centraliza os elementos na horizontal.
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                // Ícone principal da tela de login.
                const Icon(
                  Icons.phone_android,
                  size: 90,
                  color: Colors.indigo,
                ),

                // Espaço vertical entre o ícone e o título.
                const SizedBox(height: 20),

                // Título do aplicativo.
                const Text(
                  'App UC12',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Subtítulo do aplicativo.
                const Text(
                  'Interface, usabilidade e mobile',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),

                // Espaço maior antes dos campos.
                const SizedBox(height: 40),

                // Campo de texto para usuário.
                TextField(
                  // Liga o TextField ao controlador usuarioController.
                  controller: usuarioController,

                  // Define a aparência visual do campo.
                  decoration: const InputDecoration(
                    labelText: 'Usuário',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                ),

                // Espaço entre os campos.
                const SizedBox(height: 16),

                // Campo de texto para senha.
                TextField(
                  // Liga o TextField ao controlador senhaController.
                  controller: senhaController,

                  // Oculta os caracteres digitados.
                  obscureText: true,

                  // Define a aparência visual do campo.
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),

                // Espaço entre o campo de senha e o botão.
                const SizedBox(height: 24),

                // SizedBox define tamanho para o botão.
                SizedBox(
                  // Faz o botão ocupar toda a largura disponível.
                  width: double.infinity,

                  // Define a altura do botão.
                  height: 50,

                  // Botão de entrada.
                  child: ElevatedButton(
                    // Ao clicar no botão, chama o método entrar().
                    onPressed: entrar,

                    // Texto exibido dentro do botão.
                    child: const Text('Entrar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}