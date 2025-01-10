import 'package:flutter/material.dart';
import 'package:logintest/screens/NavigationScreen.dart';
import 'package:logintest/screens/Signupscreen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(image: AssetImage("images/women.png.jpg"),),
                SizedBox(height: 20,),
                Form(child:
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                      child: Column(
                        children: [
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
                                prefix: Icon(Icons.password_outlined),
                                suffix: Icon(Icons.remove_red_eye_outlined),
                                label:Text("Password"),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17),
                                )
                            ),
                          ),
                          Align(alignment: Alignment.topRight,
                            child: TextButton(onPressed: (){}, child: Text("Foregt password?"))),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                            child: ElevatedButton(onPressed:(){
                              Navigator.push((context), MaterialPageRoute(builder: (context)=>Navigationscreen()));
                            }, child:Text("Login"),
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Dont have account?"),
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupscreen()));
                                },
                                    child:
                                Text("Sign up!")),
                              ],
                            )
                          ),
            
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
