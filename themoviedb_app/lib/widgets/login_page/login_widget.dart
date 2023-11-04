import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to your account',
        ),
        foregroundColor: Colors.white,
      ),
      body: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Authorisation(),
        Registration(),
        VerifyEmail(),
      ],
    );
  }
}

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "If you signed up but didn't get your verification email.",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: null,
            child: Text(
              "Verify Email",
              style: TextStyle(color: Color.fromARGB(255, 87, 176, 229)),
            ),
          )
        ],
      ),
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "In order to use the editing and rating capabillities of TMDb, as well as get personal reccomendations you will need to login to your account. If you do not have an account, registering for an accounts is free and simple.",
              style: TextStyle(fontWeight: FontWeight.w500)),
          SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: null,
            child: Text(
              "Register",
              style: TextStyle(color: Color.fromARGB(255, 87, 176, 229)),
            ),
          )
        ],
      ),
    );
  }
}

class Authorisation extends StatefulWidget {
  const Authorisation({super.key});

  @override
  State<Authorisation> createState() => _AuthorisationState();
}

class _AuthorisationState extends State<Authorisation> {
  final textFieldDecorator = const InputDecoration(
    border: OutlineInputBorder(
        borderSide: BorderSide(
      color: Color.fromARGB(255, 224, 231, 237),
    )),
    isCollapsed: true,
    contentPadding: EdgeInsets.all(10),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
      color: Color.fromARGB(255, 87, 176, 229),
    )),
  );

  final loginConroller = TextEditingController();
  final passwordConroller = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = loginConroller.text;
    final password = passwordConroller.text;

    if (login == "admin" && password == "admin") {
      errorText = null;
      final navigator = Navigator.of(context);
      navigator.pushReplacementNamed("/main_screen");
    } else {
      errorText = "Не верный логин или пароль";
    }
    setState(() {});
  }

  void _reset() {}

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (errorText != null) ...[
            const SizedBox(
              height: 10,
            ),
            Text(
              errorText,
              style: TextStyle(color: Colors.red),
            ),
            const SizedBox(
              height: 10,
            )
          ] else
            const SizedBox(
              height: 20,
            ),
          const Text('Username', style: TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 5,
          ),
          TextField(
            controller: loginConroller,
            decoration: textFieldDecorator,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text('Password', style: TextStyle(fontWeight: FontWeight.w500)),
          const SizedBox(
            height: 5,
          ),
          TextField(
            controller: passwordConroller,
            obscureText: true,
            decoration: textFieldDecorator,
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp('[{!@#}]'))
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              ElevatedButton(
                onPressed: _auth,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 87, 176, 229)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: _reset,
                child: const Text(
                  "Reset password",
                  style: TextStyle(color: Color.fromARGB(255, 87, 176, 229)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
