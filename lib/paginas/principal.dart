import 'package:flutter/material.dart';
import 'registro.dart';
import 'insesion.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parisina - De La Rosa 6I")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFFFF176), width: 2), // Amarillo tenue
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 10)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.cut, color: Colors.black, size: 30),
                  SizedBox(width: 10),
                  Text("Parisina", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 40),
              _boton(context, "Iniciar Sesión", const InSesion()),
              const SizedBox(height: 15),
              _boton(context, "Registrarse", const Registro()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _boton(BuildContext context, String texto, Widget destino) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (c) => destino)),
        child: Text(texto),
      ),
    );
  }
}