import 'package:flutter/material.dart';
import 'package:logintest/screens/Loginscreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:
      SafeArea(
          child: SingleChildScrollView(
            child: Column(
                children: [
            Image(image: AssetImage("images/sho.png.jpg"),),
          Form(child:
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              child: Column(
                  children: [
              TextFormField(
              decoration: InputDecoration(
              label:Text("First Name"),
              prefix: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),

              )
          ),
          ),
          SizedBox(height: 30,),
          TextFormField(
            decoration: InputDecoration(
                label:Text("Last Name"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                )
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                prefix: Icon(Icons.email),
                label:Text("Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                )
            ),
          ),
          SizedBox(height: 30,),
          TextFormField(
            decoration: InputDecoration(
                prefix: Icon(Icons.password),
                suffix: Icon(Icons.remove_red_eye_outlined),
                label:Text("Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                )
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
                prefix: Icon(Icons.password_outlined),
                suffix: Icon(Icons.remove_red_eye_outlined),
                label:Text("Confirm Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                )
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: ElevatedButton(onPressed:(){}, child:Text("Login"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have account?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
              },
                  child:
                  Text("Login!")),
            ],
          )


      ],
    ),
    )
    )
    ],
    ),
    ),
    )
    );
  }
}

