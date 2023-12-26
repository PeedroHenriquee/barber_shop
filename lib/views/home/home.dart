import 'package:barber/controllers/cadastro.dart';
import 'package:barber/controllers/entrar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required String title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _psController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
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
              SingleChildScrollView(
                // ScrollView específico para o Container com os botões

                child: Container(
                  width: 855,
                  height: 392,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xff0d183e),
                  ),
                  child: Column(
                    // Use Row ou Column dependendo do scrollDirection
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 197,
                        height: 45,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xfff7e53e),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Lógica para o botão "ENTRAR"
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Entrar(title: 'Entrar',)),
                            );
                          },
                          child: Text(
                            "ENTRAR",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 197,
                        height: 45,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xfff7e53e),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Lógica para o botão "CADASTRAR-SE"
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cadastro()),
                            );
                          },
                          child: Text(
                            "CADASTRAR-SE",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
