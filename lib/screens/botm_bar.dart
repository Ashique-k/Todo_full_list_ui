import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:todo_full_list/screens/details_page.dart';
import 'package:todo_full_list/screens/home_page.dart';
import 'package:todo_full_list/screens/profile_page.dart';

import 'home_page.dart';



class Bot extends StatefulWidget {
  const Bot({super.key});

  @override
  State<Bot> createState() => _BotState();
}

class _BotState extends State<Bot> {
  int currentTabIndex =0;

  late List<Widget>Homes_page=[const Home_page(),const Profile_page(),];
  void updateIndex(int newindex){
    setState(() {
      currentTabIndex=newindex;
    });
  }
  @override
  void initState(){
    currentTabIndex =0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Homes_page[currentTabIndex],
        bottomNavigationBar:CurvedNavigationBar(
          height: 60,
          animationDuration: Duration(milliseconds: 500),



          items: [Icon(Icons.home),Icon(Icons.person)],
          onTap: (index){
            updateIndex(index);

          },
          backgroundColor: Colors.lightBlue,



        )
    );
  }
}


