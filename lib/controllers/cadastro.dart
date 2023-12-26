import 'package:barber/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:barber/main.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();
  final TextEditingController _senhaContorller = TextEditingController();


  String _imagemAsset =
      'assets/foto4.png'; // Substitua pelo caminho correto da sua imagem

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      backgroundColor: Color.fromARGB(255, 1, 17, 57),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/foto4.png",
                width: 100,
                height: 180,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 231, 238, 231)),
                  // Cor do rótulo
                  hintStyle: TextStyle(color: Colors.red),
                ),
                keyboardType: TextInputType.none,
                style:
                    TextStyle(color: const Color.fromARGB(255, 243, 240, 33)),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(
                          255, 237, 242, 238)), // Cor do rótulo
                  hintStyle: TextStyle(
                      color: Color.fromARGB(
                          255, 247, 23, 23)), // Cor do texto de sugestão
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    color: const Color.fromARGB(
                        255, 243, 240, 33)), // Cor do texto digitado
              ),
              SizedBox(height: 16),
              TextField(
                controller: _telefoneController,
                decoration: InputDecoration(
                  labelText: 'Telefone',
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(
                          255, 237, 242, 238)), // Cor do rótulo
                  hintStyle: TextStyle(
                      color: Color.fromARGB(
                          255, 247, 23, 23)), // Cor do texto de sugestão
                ),
                keyboardType: TextInputType.phone,
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 243, 240, 33)), // Cor do texto digitado
              ),
              SizedBox(height: 16),
              TextField(
                controller: _senhaContorller,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(
                          255, 237, 242, 238)), // Cor do rótulo
                  hintStyle: TextStyle(
                      color: Color.fromARGB(
                          255, 247, 23, 23)), // Cor do texto de sugestão
                ),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    color: const Color.fromARGB(
                        255, 243, 240, 33)), // Cor do texto digitado
              ),
              SizedBox(height: 16),
              SizedBox(height: 16),

              ElevatedButton(

                onPressed: () { Navigator.pop(context); },style: ElevatedButton.styleFrom(
    foregroundColor: Colors.black, backgroundColor: Colors.yellow, // Cor do texto preto
  ), child: Text('Voltar'),),
                
                
                
              
            ],
          ),
        ),
      ),
    );
  }

  void _cadastrar() {
    // Lógica para cadastrar os dados, como enviar para um servidor, salvar localmente, etc.
    String nome = _nomeController.text;
    String email = _emailController.text;
    String telefone = _telefoneController.text;

    // Exibir ou processar os dados conforme necessário
    print('Nome: $nome');
    print('E-mail: $email');
    print('Telefone: $telefone');
  }
}
