import 'package:flutter/material.dart';
import 'package:logintest/screens/Loginscreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage("images/payment.jpg")),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text("First Name"),
                          prefix: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text("Last Name"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.email),
                          label: Text("Email"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.password),
                          suffix: Icon(Icons.remove_red_eye_outlined),
                          label: Text("Password"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          prefix: Icon(Icons.password_outlined),
                          suffix: Icon(Icons.remove_red_eye_outlined),
                          label: Text("Confirm Password"),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          // يمكنك إضافة منطق للتحقق من تطابق كلمة المرور هنا
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // إذا كان النموذج صالحًا، انتقل إلى صفحة تسجيل الدخول
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Loginscreen()),
                              );
                            }
                          },
                          child: Text("Sign Up"),
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
                            },
                            child: Text("Register!"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}