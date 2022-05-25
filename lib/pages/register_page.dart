import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(210, 209, 227, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(20, 31, 106, 1),
      ),
      body: ListView(children: [
        Column(
          children: [
            const SizedBox(height: 15),
            Image.asset(
              'assets/logo.png',
              width: 200,
            ),
            const SizedBox(height: 15),
            const Text('Registro',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xAC0E2A41))),
            const SizedBox(height: 25),
            _nameTextField(),
            const SizedBox(height: 20),
            _emailTextField(),
            const SizedBox(height: 20),
            _passwordTextField(),
            const SizedBox(
              height: 15,
            )
          ],
        )
      ]),
    );
  }

  Widget _nameTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.white)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Nombre',
              labelStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
            onChanged: (value) {},
          ),
        );
      },
    );
  }

  Widget _emailTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.white)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Email',
              labelStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
            onChanged: (value) {},
          ),
        );
      },
    );
  }

  Widget _passwordTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.white)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: 'Contraseña',
              labelStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
            ),
            onChanged: (value) {},
          ),
        );
      },
    );
  }
}
