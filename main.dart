import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'welcomeScreen.dart';
void main() {
  runApp(const homeScreen());

}

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
 homestate createState() => homestate();
}

class homestate extends State<homeScreen> {
  @override
  int index = 0;
  String Type = "";

  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = ["American GPA", "British GPA"];
    DropdownMenuItem<String> buildmenuitem(String item) => DropdownMenuItem(
          value: item,
          child: Text(item, style: TextStyle(color: Color(0xffffffff))),
        );
    String? value;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GPA Calculator",
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff243b67),
        toolbarHeight: 100,
        foregroundColor: Color(0xffffffff),
      ),
      backgroundColor: Color(0xff17181c),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "GPA",
              style: TextStyle(fontSize: 24, color: Color(0xffffffff)),
            ),
            SizedBox(height: 15),
            Text(
              "Calculator",
              style: TextStyle(fontSize: 24, color: Color(0xffffffff)),
            ),
            SizedBox(height: 70),

     
            Material(
              elevation: 5,
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(24),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return welcomeScreen();
                      },
                    ),
                  );
                },
                minWidth: 200,
                height: 40,
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
         
          
              children: [
                Container(
          //              mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisSize: MainAxisSize.max,
                  margin: EdgeInsets.all(80),
         child: Text("made by : Mohamed Mohy",style: TextStyle(color: Color(0xffffffff)),)
            )],
            ),
 
            ])
            ),
            
           

           );
  
    
  }
}
