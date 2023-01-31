import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = "login page";

  const LoginPage({super.key, required String title});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD32F2F),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Registro o Inicio",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
              SizedBox(
                height: 300.0,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const SizedBox(
                height: 15,
              ),
              nameTextField(),
              const SizedBox(
                height: 15,
              ),
              userTextField(),
              const SizedBox(
                height: 15,
              ),
              passwordTextField(),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
              ),
              buttonSignUp(),
            ],
          ),
        ),
      ),
    );
  }

  //Nombre de usuario
  nameTextField() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person_outline),
          labelText: "Ingresa tu nombre",
          hintText: "Stephanie Pech",
        ),
      ),
    );
  }

//Correo del usuario
  Widget userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'ejemplo@correo.com',
            labelText: 'Correo electronico',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

//Contraseña del usuario
  Widget passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget buttonSignUp() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // ignore: deprecated_member_use
        primary: Colors.orange,
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        shape : RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      ),
      
      onPressed: () {},
      child: const Text("Iniciar"),
    );
  }
}