import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController name = new TextEditingController();
  final TextEditingController age = new TextEditingController();
  final TextEditingController mobile = new TextEditingController();
  final TextEditingController pincode = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder()
                ),
              ),
              TextField(
                controller: age,
                decoration: InputDecoration(
                    labelText: "Age",
                    border: OutlineInputBorder()
                ),
              ),

              TextField(
                controller: mobile,
                decoration: InputDecoration(
                    labelText: "Mobile",
                    border: OutlineInputBorder()
                ),
              ),

              TextField(
                controller: pincode,
                decoration: InputDecoration(
                    labelText: "Pincode",
                    border: OutlineInputBorder()
                ),
              ),

              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email-Id",
                    border: OutlineInputBorder()
                ),
              ),

              TextField(
                controller: password,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
