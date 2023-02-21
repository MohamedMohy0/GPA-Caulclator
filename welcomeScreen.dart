import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:GPACalculator/welcomeScreen.dart';
import 'semester.dart';
import 'cumlativegpa.dart';
import 'semestergpa.dart';
import 'describe.dart';
import 'describea.dart';

void main() {
  runApp(const welcomeScreen());
}

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  welcomeScreenstate createState() => welcomeScreenstate();
}

class welcomeScreenstate extends State<welcomeScreen> {
  @override
  final items = ["American GPA", "British GPA"];
  
  String? value;
  Widget build(BuildContext context) {   
    DropdownMenuItem<String> buildmenuitem(String item) => DropdownMenuItem(
          value: item,
          child: Text(item, style: TextStyle(color: Color(0xffffffff))),
        );
    
    return MaterialApp(   debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              SizedBox(height: 80),
              Text("GPA system:",  style: TextStyle( color: Color(0xffffffff)),),
              SizedBox(height: 10,),
               Container(
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff243b67), width: 3),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: DropdownButton<String>(
                        value: value,
                        isExpanded: true,
                        items: items.map(buildmenuitem).toList(),
                        onChanged: (value) => setState(
                          () => this.value = value,
                        ),
                        dropdownColor: Color(0xff17181c),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
              SizedBox(height: 20,),
              Material(
                elevation: 5,
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(24),
                child: MaterialButton(
                  onPressed: () {
                    var val = value.toString();
                    if (val == "American GPA") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return semesterScreen();
                          },
                        ),
                      );
                    }
                    ;

                    if (val == "British GPA") {


              Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return semesterBScreen();
                          },
                        ),
                      );


                    }
                    ;
                  },
                  minWidth: 200,
                  height: 40,
                  child: Text(
                    "Semester GPA",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                elevation: 5,
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(24),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => cumlativeeScreen()));
                  },
                  minWidth: 200,
                  height: 40,
                  child: Text("Cumulative GPA",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => describeeScreen()));
          },
          backgroundColor: Color(0xff243b67),
          child: const Icon(
            Icons.info,
            semanticLabel: "info",
            size: 30,
          ),
        ),
      ),
    );
  }
}
