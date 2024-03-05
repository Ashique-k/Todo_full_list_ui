import 'package:flutter/material.dart';
import 'package:todo_full_list/screens/login_page.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                    width: 600,

                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Image.asset("assets/images/todo img.jpg"),
                    )),
                Text("Getting things done",style: TextStyle(fontSize: 18,color: Colors.black),),
                Text("with TODO",style: TextStyle(fontSize: 18,color: Colors.black),),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your full name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      hintStyle: TextStyle(fontSize: 14),
                      labelText: "Full Name"
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter your mail",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        hintStyle: TextStyle(fontSize: 14),
                        labelText: "Gmail"
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        hintStyle: TextStyle(fontSize: 14),
                        labelText: "password"
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {   // Validation Logic
                        return 'required';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        hintStyle: TextStyle(fontSize: 14),

                    ),

                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(onPressed: (){
              if(_formkey.currentState!.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              };

                  }, child: Text("Register",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    )
                  ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already Haven't account ?"),
                    SizedBox(
                      width: 3,
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );

                    }, child: Text("Sign in"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
