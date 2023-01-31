import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static String id = "home page";

  const MyHomePage({super.key, required String title});

  @override
  // ignore: library_private_types_in_public_api
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Perfil")
          ],
        ),
        body: _paginaActual == 0 ? const PaginaHome() : const Usuario(),
      ),
    );
  }
}

class PaginaHome extends StatelessWidget {
  const PaginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFC62828),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(color: Colors.black12),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "¡Bienvenidos a papas el amigo Alex!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            SizedBox(
              height: 300.0,
              child: Image.asset('assets/logo.png', height: 400, width: 400),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              textAlign: TextAlign.left,
              "Estos son los productos que ofrece el amigo Alex:",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w100,
                fontFamily: 'Arial',
              ),
            ),
            Flexible(
              child: Image.asset('assets/menu.png', height: 300, width: 300),
            ),
          ],
        ),
      ),
    );
  }
}

class Usuario extends StatelessWidget {
  const Usuario({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "Perfil del usuario",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Image.asset('assets/yoon.png', height: 200, width: 200),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "Usuario: Stephanie Pech",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "Correo: Paulinapech7534@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const SizedBox(
                child: Text(
                  "Descripción: ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(color: Colors.white),
              ),
              child: RichText(
                text: const TextSpan(
                  text: 'A quien corresponda: ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          ' Esta es mi primera vez programando con Flutter, disculpe por el diseño.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    TextSpan(
                      text: '  Mi nombre es Stephanie Pech del grupo TI4A',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    TextSpan(
                        text:
                            ' aquí traté de hacer un simple perfil de usuario ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
