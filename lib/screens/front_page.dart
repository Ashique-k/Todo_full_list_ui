import 'package:flutter/material.dart';
import 'package:todo_full_list/screens/registr_page.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/todo img.jpg"),
            SizedBox(
              height: 10,

            ),
            Text("Welcome to",style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
            Text("Our Remainder",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
            Text("This is our list of about yours join our team",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 35,

            ),
            SizedBox(
              width: 350,
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );



              }, child: Text("Get Started"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
