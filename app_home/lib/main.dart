import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:app_home/login.dart';
import 'package:app_home/Vistas/Home.dart';
import 'package:app_home/Vistas/IniciarSesion.dart';


void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); //Verfifica que todo este inicializado
  Firebase.initializeApp().then((value) {
    runApp(const MyApp());
  }); //Inicia el proyecto de firebase, que esta dentro de la carpeta Android
}

//LA CLASE DE MI APLICACIÓN
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUsers();
  }

  void getUsers() async {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection(
        "users"); //Primero se crea una referencia hacia una colección dentro de firebase

    QuerySnapshot users = await collectionReference
        .get(); //Luego se hace una consulta hacia esa conexión para obtener los valores

    if (users.docs.isNotEmpty) {
      //La variable users tiene una propiedad llamada docs, la cual mostrará la cantidad de registros dentro de la colección
      for (var doc in users.docs) {
        //El for es para recorrer el array de documentos
        print(doc.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iniciar Sesión',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const InicioSesion(title: 'Iniciar Sesión'),

    );
  }
}
