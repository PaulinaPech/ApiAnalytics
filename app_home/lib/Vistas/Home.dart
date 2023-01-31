import 'package:flutter/material.dart';
import 'package:app_home/Vistas/IniciarSesion.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(title: 'Hola, Bienvenidos!'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  var images = {
    "humedad.png": "Humedad",
    "tiempo.png": "Tiempo",
    "temperatura.png": "Temperatura",
    "suelo.png": "Suelo",
    "sol.png": "Energía solar",
    "riego.png": "Riego Inteligente",
    "plaga.png": "Control de plaga",
    "cultivo.png": "Cultivos",
    "estadisticas.png": "Estadisticas",
    "registro.png": "Registro"
  };

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          //IMAGEN DEL ENCABEZADO
          actions: <Widget>[
            Image.asset(
              'assets/logo.png',
            )
          ],
        ),
        //MENÚ
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/InicioSesion.png")),
                  color: Colors.white,
                ),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Nosotros'),
                iconColor: Colors.green,
              ),
              Divider(
                color: Color.fromARGB(255, 199, 198, 198),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Personal'),
                iconColor: Colors.green,
              ),
              Divider(
                color: Color.fromARGB(255, 199, 198, 198),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración'),
                iconColor: Colors.green,
              ),
              Divider(
                color: Color.fromARGB(255, 199, 198, 198),
              ),
              ListTile(
                leading: Icon(Icons.social_distance_outlined),
                title: Text('Redes Sociales'),
                iconColor: Colors.green,
              ),
              Divider(
                color: Color.fromARGB(255, 199, 198, 198),
              ),
              ListTile(
                leading: Icon(Icons.recommend),
                title: Text('Recomendaciones'),
                iconColor: Colors.green,
              ),
            ],
          ),
        ), //AQUI FINALIZA MENÚ
        body: ListView(
          children: [
            Container(
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    backgroundColor: Colors.green,
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.remove_red_eye_outlined),
                    label: 'Vistas',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Cuenta',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.green,
                onTap: _onItemTapped,
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Fondo1.png"), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //AQUI SOLO AGREGUE LA PALABRA INTELIGENTES AL FINAL DE LA ORACION------------------------------->
                    "¡Somos tu mejor opción para cultivar tus propios alimentos, Si a los invernaderos inteligentes!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            //ESTO LO VAS A AGREGAR AL CODIGO NENA------------------------------->
            SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    "Novedades...",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 13, 154, 18),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/Novedad1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/Novedad2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/Novedad3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/Novedades4.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/Novedad5.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 380.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  const Text(
                    "Explorar...",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 13, 154, 18),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 50),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 186, 232, 252),
                                image: DecorationImage(
                                    image: AssetImage("assets/" +
                                        images.keys.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: Text(
                              images.values.elementAt(index),
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ) 
          ],
        ),
      ),
    );
  }
}
