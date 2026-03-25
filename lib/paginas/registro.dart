import 'package:flutter/material.dart';
import '../models/local_data.dart';
import 'insesion.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});
  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _user = TextEditingController();
  final _email = TextEditingController();
  final _pass = TextEditingController();
  final _confirm = TextEditingController();

  void _registrar() {
    if (_pass.text == _confirm.text && _email.text.isNotEmpty) {
      LocalData.savedName = _user.text;
      LocalData.savedEmail = _email.text;
      LocalData.savedPassword = _pass.text;
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registro")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: _user, decoration: const InputDecoration(labelText: "Nombre de usuario")),
            TextField(controller: _email, decoration: const InputDecoration(labelText: "Correo")),
            TextField(controller: _pass, obscureText: true, decoration: const InputDecoration(labelText: "Contraseña")),
            TextField(controller: _confirm, obscureText: true, decoration: const InputDecoration(labelText: "Confirmar contraseña")),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
              onPressed: _registrar, 
              child: const Text("Registrarse")
            ),
            TextButton(
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => const InSesion())),
              child: const Text("¿Ya tienes cuenta? Inicia Sesión", style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}