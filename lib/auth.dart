import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/home.dart';



class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Clown Mobile ", style: TextStyle(fontSize: 30, color: Colors.red)),
                  Image.asset("images/clown.png")
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    label: const Text("Email", selectionColor: Colors.red,),
                    labelStyle: TextStyle(color: Colors.red),
                    // hintText: "email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    prefixIcon: const Icon(Icons.email, color: Colors.amber),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    label: const Text("Password", selectionColor: Colors.red,),
                    labelStyle: const TextStyle(color: Colors.red),
                    // hintText: "email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.red)
                    ),
                    prefixIcon: const Icon(Icons.email, color: Colors.amber),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  },
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    )),
                    backgroundColor: MaterialStatePropertyAll(Colors.red)
                  ),
                  child: Text("Sign In")
                )
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              InkWell(
                child: Text(
                  "Sing Up?", 
                  style: TextStyle(color: Colors.black38),
                ), 
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}