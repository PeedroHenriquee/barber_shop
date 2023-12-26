import 'package:barber/controllers/cadastro.dart';
import 'package:flutter/material.dart';

class Entrar extends StatefulWidget {
  const Entrar({Key? key, required String title}) : super(key: key);

  @override
  State<Entrar> createState() => _EntrarState();
}

class _EntrarState extends State<Entrar> {
  
  final _emailController = TextEditingController();
  final TextEditingController _senhaContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            SizedBox(height: 20),
            Text(
              "BARBER SHOP",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 74, 72, 72)),
            ),
            Image.asset(
              "assets/foto3.png",
              width: 555,
              height: 325,
            ),
            SizedBox(height: 20),
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

               ElevatedButton(
  onPressed: () {
    // Lógica adicional, se necessário
    Navigator.pop(context); // Voltar para a página anterior
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.black, backgroundColor: Colors.yellow, // Cor do texto preto
    side: BorderSide(color: Colors.black, width: 2.0),
    
     // Borda preta com largura de 2.0
  ),
  child: Text('Entrar'),
  
),

          ]),
        ),
      ),
    );
  }
}
