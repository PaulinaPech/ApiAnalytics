import 'package:app_home/Vistas/Home.dart';
import 'package:flutter/material.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key, required this.title});

  final String title;

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    'assets/InicioSesion.png',
                    height: 280.0,
                    width: 250.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                _userTextField(),
                SizedBox(
                  height: 15.0,
                ),
                _passwordTextField(),
                SizedBox(
                  height: 20.0,
                ),
                _bottonLogin(context),
                SizedBox(
                  height: 15.0,
                ),
                _recuperarContrasena(),
                SizedBox(
                  height: 20.0,
                ),
                _bottonNew(),
              ],
            ),
          )),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email),
            hintText: 'Número de celular o correo electrónico',
            labelText: 'Usuario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin(context) {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green, // background
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text(
              "Iniciar Sesión",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Home(
                          title: "",
                        )));
          });
    });
  }

  Widget _recuperarContrasena() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        child: Text(
          "¿Olvidaste tu contraseña?",
          style: TextStyle(color: Color.fromARGB(255, 12, 91, 156)),
        ),
      );
    });
  }

  Widget _bottonNew() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 72, 166, 242), // background
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
            child: Text(
              "Crear cuenta nueva",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          onPressed: () {});
    });
  }
}
