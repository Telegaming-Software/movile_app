import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 206, 223),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 42, 65),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 15),
              Image.asset(
                'assets/logo.png',
                width: 200,
              ),
              const SizedBox(height: 15),
              _userTextField(),
              const SizedBox(height: 15),
              _passwordTextField(),
              const SizedBox(height: 15),
              _loginButton(),
              const SizedBox(height: 15),
              const Text('Forgot your password?',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 14, 42, 65))),
              const SizedBox(height: 25),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    const Text('O Inicia sesión con:',
                        style: TextStyle(
                            fontSize: 21,
                            color: Color.fromARGB(255, 14, 42, 65))),
                    const SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            size: 40,
                            Icons.facebook,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Icon(
                            size: 40,
                            Icons.email,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Icon(
                            size: 40,
                            Icons.camera,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Icon(
                            size: 40,
                            Icons.chat_bubble_outline_rounded,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ])
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text('Registrate',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 14, 42, 65))),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }

  Widget _userTextField() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return Container(
          width: 350,
          height: 60,
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
              labelText: 'Email',
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
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.white)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            style: const TextStyle(fontSize: 17),
            obscureText: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Password',
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.black),
            ),
            onChanged: (value) {},
          ),
        );
      },
    );
  }

  Widget _loginButton() {
    return StreamBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 14, 42, 65)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ))),
            onPressed: null,
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              child: const Text('Login',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ));
      },
    );
  }
}
