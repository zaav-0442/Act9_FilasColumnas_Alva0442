import 'package:flutter/material.dart';

void main() => runApp(AppPizzeria());

class AppPizzeria extends StatelessWidget {
  const AppPizzeria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : PizeriaFilasColumnas(),
      title: 'Pizzeria Layout',
      // Mantenemos el modo oscuro
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1A1A1A),
      )
    );
  }
} // Fin clase AppPizzeria

class PizeriaFilasColumnas extends StatelessWidget {
  const PizeriaFilasColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '6°J - Freddy Fazbear\'s Pizzeria',
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontFamily: 'Serif',
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 95, 58, 36),
        elevation: 10,
        leading: const Icon(Icons.restaurant_menu, color: Color.fromARGB(255, 173, 149, 12)),
        actions: const [
          Icon(Icons.videocam, color: Colors.white70),
          SizedBox(width: 15),
          Icon(Icons.notifications_active, color: Colors.white70),
          SizedBox(width: 10),
        ],
      ),
      // SafeArea protege el contenido de los bordes físicos de la pantalla
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    crearContenedor(Colors.brown, 'Café'),
                    crearContenedor(const Color.fromARGB(255, 219, 182, 17), 'Amarillo', textoOscuro: true),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    crearContenedor(const Color.fromARGB(255, 70, 45, 138), 'Morado'),
                    crearContenedor(const Color.fromARGB(255, 141, 30, 30), 'Rojo'),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    crearContenedor(const Color.fromARGB(255, 255, 255, 255), 'Blanco', textoOscuro: true),
                    crearContenedor(const Color.fromARGB(255, 146, 120, 36), 'Dorado'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} // Fin clase PizeriaFilasColumnas

Widget crearContenedor(Color color, String nombre, {bool textoOscuro = false}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0), // Separación entre contenedores
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          nombre,
          style: TextStyle(
            color: textoOscuro ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
