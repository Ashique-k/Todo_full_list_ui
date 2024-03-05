import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';
import 'package:todo_full_list/screens/home_page.dart';

import 'fntions.dart';

class Details_page extends StatefulWidget {
  const Details_page({super.key});

  @override
  State<Details_page> createState() => _Details_pageState();
}

class _Details_pageState extends State<Details_page> {
  TextEditingController namesctrl=TextEditingController();
  TextEditingController agesctrl=TextEditingController();
  TextEditingController placesctrl=TextEditingController();

  void _submitForm () async{

    String Id = randomAlphaNumeric(10);
    Map<String, dynamic>employeeInfoMap = {
      'name':namesctrl.text,
      'id':Id,
      'age': agesctrl.text,
      'place': placesctrl.text,
    };
    await DatabaseMethods().addEmployeeDetails(employeeInfoMap,Id)
        .then((value) {

      Fluttertoast.showToast(
          msg: "Employee details has been uploaded successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.orangeAccent,
          fontSize: 16.0
      );

    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home_page()),
    );
  }

  final SnackBar _snackBar = SnackBar(content: Text("succeesfully registerd"),duration: Duration(seconds: 4),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add",style: TextStyle(color: Colors.black,
                fontSize: 24,fontWeight: FontWeight.bold),
            ),
            Text("Cleints",style: TextStyle(color: Colors.black87,
                fontSize: 24,fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0,top: 30.0,right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold )),

            SizedBox(
              height: 10.0,
            ),

            Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: TextField(
                  controller: namesctrl,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                )
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Age",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold )),

            SizedBox(
              height: 10.0,
            ),

            Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: TextField(
                  controller: agesctrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                )
            ),
            SizedBox(
              height: 20,
            ),
            Text("place",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold )),

            SizedBox(
              height: 10.0,
            ),

            Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: TextField(
                  controller: placesctrl,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                )
            ),

            SizedBox(
              height: 20.0,
            ),

            Center(child: ElevatedButton(onPressed: () {

              _submitForm();
            }, child: Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)))

          ],
        ),
      ),
    );
  }
}




