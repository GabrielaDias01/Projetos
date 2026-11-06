// Importa o pacote Material Design do Flutter.
import 'package:flutter/material.dart';

// Criação da tela CadastroPage.
// Essa tela será responsável pelo cadastro de um novo aluno.
class CadastroPage extends StatefulWidget {
  // Construtor da classe CadastroPage.
  const CadastroPage({super.key});

  // Cria o estado da tela.
  // Como a tela possui formulário, controladores e validação,
  // usamos StatefulWidget.
  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

// Classe responsável pelo estado da CadastroPage.
// Aqui ficam as variáveis, os controladores, os métodos e a interface.
class _CadastroPageState extends State<CadastroPage> {
  // Chave global do formulário.
  // Ela permite acessar o estado do Form e validar todos os campos de uma vez.
  final formKey = GlobalKey<FormState>();

  // Controlador do campo Nome.
  // Permite acessar e limpar o texto digitado pelo usuário.
  final nomeController = TextEditingController();

  // Controlador do campo E-mail.
  // Permite acessar e limpar o e-mail digitado.
  final emailController = TextEditingController();

  // Controlador do campo Curso.
  // Permite acessar e limpar o curso digitado.
  final cursoController = TextEditingController();

  // Método chamado quando o usuário clica no botão "Salvar cadastro".
  void salvarCadastro() {
    // currentState acessa o estado atual do formulário.
    // validate() executa todos os validators dos campos.
    if (formKey.currentState!.validate()) {
      // Se todos os campos estiverem corretos,
      // exibe uma mensagem de sucesso usando SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Cadastro realizado com sucesso!'),
        ),
      );

      // Limpa o campo Nome.
      nomeController.clear();

      // Limpa o campo E-mail.
      emailController.clear();

      // Limpa o campo Curso.
      cursoController.clear();
    }
  }

  // O método dispose() é chamado quando a tela é encerrada.
  // Ele serve para liberar os recursos usados pelos controladores.
  @override
  void dispose() {
    // Libera o controlador do campo Nome.
    nomeController.dispose();

    // Libera o controlador do campo E-mail.
    emailController.dispose();

    // Libera o controlador do campo Curso.
    cursoController.dispose();

    // Chama o dispose da classe pai.
    super.dispose();
  }

  // Método responsável por construir a interface gráfica da tela.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar é a barra superior da tela.
      appBar: AppBar(
        // Título exibido na barra superior.
        title: const Text('Cadastro'),

        // Cor de fundo da AppBar.
        backgroundColor: Colors.indigo,

        // Cor dos textos e ícones da AppBar.
        foregroundColor: Colors.white,
      ),

      // Corpo principal da tela.
      body: Padding(
        // Define espaçamento interno de 16 pixels em todos os lados.
        padding: const EdgeInsets.all(16),

        // Form agrupa os campos do formulário.
        // Ele permite validar vários campos ao mesmo tempo.
        child: Form(
          // Associa o formulário à chave formKey.
          key: formKey,

          // ListView organiza os elementos em lista vertical com rolagem.
          // Isso evita erro de overflow quando o teclado aparece
          // ou quando a tela do dispositivo é pequena.
          child: ListView(
            children: [
              // Título da tela de cadastro.
              const Text(
                'Cadastrar novo aluno',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Espaço vertical entre o título e o primeiro campo.
              const SizedBox(height: 16),

              // Campo de formulário para o nome do aluno.
              TextFormField(
                // Liga o campo ao controlador nomeController.
                controller: nomeController,

                // Define a aparência visual do campo.
                decoration: const InputDecoration(
                  // Texto exibido no campo.
                  labelText: 'Nome',

                  // Ícone exibido no início do campo.
                  prefixIcon: Icon(Icons.person),

                  // Cria uma borda ao redor do campo.
                  border: OutlineInputBorder(),
                ),

                // Função que valida o conteúdo digitado no campo.
                validator: (value) {
                  // Verifica se o campo está vazio.
                  if (value == null || value.isEmpty) {
                    // Mensagem exibida abaixo do campo.
                    return 'Informe o nome';
                  }

                  // Quando retorna null, significa que o campo está correto.
                  return null;
                },
              ),

              // Espaço vertical entre os campos.
              const SizedBox(height: 16),

              // Campo de formulário para o e-mail do aluno.
              TextFormField(
                // Liga o campo ao controlador emailController.
                controller: emailController,

                // Define o tipo de teclado mais adequado para e-mail.
                keyboardType: TextInputType.emailAddress,

                // Define a aparência visual do campo.
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),

                // Função de validação do e-mail.
                validator: (value) {
                  // Verifica se o campo está vazio.
                  if (value == null || value.isEmpty) {
                    return 'Informe o e-mail';
                  }

                  // Retorna null quando o campo está válido.
                  return null;
                },
              ),

              // Espaço vertical entre os campos.
              const SizedBox(height: 16),

              // Campo de formulário para o curso do aluno.
              TextFormField(
                // Liga o campo ao controlador cursoController.
                controller: cursoController,

                // Define a aparência visual do campo.
                decoration: const InputDecoration(
                  labelText: 'Curso',
                  prefixIcon: Icon(Icons.school),
                  border: OutlineInputBorder(),
                ),

                // Função de validação do campo curso.
                validator: (value) {
                  // Verifica se o campo está vazio.
                  if (value == null || value.isEmpty) {
                    return 'Informe o curso';
                  }

                  // Retorna null quando o campo está válido.
                  return null;
                },
              ),

              // Espaço vertical antes do botão.
              const SizedBox(height: 24),

              // SizedBox usado para definir a altura do botão.
              SizedBox(
                height: 50,

                // Botão com ícone e texto.
                child: ElevatedButton.icon(
                  // Quando o botão for pressionado,
                  // o método salvarCadastro será executado.
                  onPressed: salvarCadastro,

                  // Ícone exibido dentro do botão.
                  icon: const Icon(Icons.save),

                  // Texto exibido dentro do botão.
                  label: const Text('Salvar cadastro'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}