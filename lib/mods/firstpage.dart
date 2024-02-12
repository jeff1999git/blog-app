import 'package:blogapp/mods/loginpage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController emailid = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: emailid,
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
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>LoginPage()
              ));
            },
                child: Text("Login")),

            Text(emailid.text),
            Text(password.text),
          ],
        ),
      ),
    );
  }
}
