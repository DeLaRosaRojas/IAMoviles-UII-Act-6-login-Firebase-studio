import 'package:flutter/material.dart';
import '../models/local_data.dart';
import 'registro.dart';

class InSesion extends StatefulWidget {
  const InSesion({super.key});
  @override
  State<InSesion> createState() => _InSesionState();
}

class _InSesionState extends State<InSesion> {
  final _email = TextEditingController();
  final _pass = TextEditingController();

  void _login() {
    if (_email.text == LocalData.savedEmail && _pass.text == LocalData.savedPassword) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("¡Bienvenido!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Iniciar Sesión")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: _email, decoration: const InputDecoration(labelText: "Correo")),
            TextField(controller: _pass, obscureText: true, decoration: const InputDecoration(labelText: "Contraseña")),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
              onPressed: _login, 
              child: const Text("Iniciar Sesión")
            ),
            TextButton(
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => const Registro())),
              child: const Text("¿No tienes cuenta? Regístrate", style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}