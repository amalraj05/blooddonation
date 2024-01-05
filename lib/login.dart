
import 'package:blooddonation/accountcreate.dart';
import 'package:blooddonation/add.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          height: 450,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 40,right: 40),
            child: Image.asset("images/blood.png",width: 200,),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        loginButton("Sign In"),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 60,
          width: 320,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Account())
              );
            },
           child: Text("Create Account",style: TextStyle(color: Colors.white,fontSize: 17),)),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Text(
                    "Learn more",
                    style: TextStyle(fontSize: 15,color: Colors.redAccent),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => survey()),
  );
                    },
                    child: Text(
                      "Skip now ->",
                      style: TextStyle(fontSize: 15,color: Colors.redAccent),
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}

Widget loginButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(25)),
      child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
    ),
  );
}
