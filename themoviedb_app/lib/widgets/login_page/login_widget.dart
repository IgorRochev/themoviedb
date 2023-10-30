import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to your account',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
    // TODO: implement build
    return ListView(
      children: [
        Authorisation(),
        Registration(),
        VerifyEmail(),
      ],
    );
  }
}

class VerifyEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
  @override
  State<Authorisation> createState() => _AuthorisationState();
}

class _AuthorisationState extends State<Authorisation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Username', style: TextStyle(fontWeight: FontWeight.w500)),
          SizedBox(
            height: 5,
          ),
          TextField(
            decoration: InputDecoration(
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
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text('Password', style: TextStyle(fontWeight: FontWeight.w500)),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 224, 231, 237),
                )),
                isCollapsed: true,
                contentPadding: EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromARGB(255, 87, 176, 229),
                ))),
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp('[{!@#}]'))
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              ElevatedButton(
                onPressed: _auth,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 87, 176, 229)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              TextButton(
                onPressed: _reset,
                child: Text(
                  "Reset password",
                  style: TextStyle(color: Color.fromARGB(255, 87, 176, 229)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  void _auth() {}

  void _reset() {}
}
