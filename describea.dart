import 'package:flutter/material.dart';
import 'package:GPACalculator/welcomeScreen.dart';
import 'describe.dart';
void main() {
  runApp(const describeeScreen());
}

class describeeScreen extends StatefulWidget {
  const describeeScreen({Key? key}) : super(key: key);

  @override
  describeeScreenstate createState() => describeeScreenstate();
}

class describeeScreenstate extends State<describeeScreen> {
  @override
  int gpa = 0;
  final items = ["A+", 'A', 'B+', "B", 'C+', "C", "D", "F"];
  String? value;

  Widget build(BuildContext context) {
    DropdownMenuItem<String> buildmenuitem(String item) => DropdownMenuItem(
          value: item,
          child: Text(item, style: TextStyle(color: Color(0xffffffff))),
        );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>welcomeScreen()));
            },
          ),
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
        body: SafeArea(
          child: Container(
            color: Color(0xff17181c),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "choose your GPA system ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "choose the type of calculation that you would like to do",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      " when choosing to calculate the semester GPA we write the number of hours for each course and the GPA as well then press add button one by the other  ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  
                    SizedBox(height: 20),
                    Text(
                      " if data was added by mistake or you want to do a new calculation click on the clear button ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    
                    SizedBox(height: 20),
                    Text(
                      "  when choosing to calculate the cumulative GPA we add the previous hours and the previous GPA then add the data for the new semester   ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                   
                   
                    SizedBox(height: 20,),
                    Text(
                      " points for American system : ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      "A+=4 , A=3.667 , B+=3.334 , B=3 , C+=2.667 , C=2.334  , D=2  , F=0 ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),

                    SizedBox(height: 20,),
                    Text(
                      " points for British system : ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      "A+=4 , A=4 , A-=3.7, B+=3.3 , B=3 , B-=2.7 , C+=2.3 , C=2 , C-=1.7 , D+=1.3 , D=1  , F=0 ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
SizedBox(height: 100),
 Text(
                      "  ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),


                    
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => welcomeScreen()));
          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => describeaScreen()));
        },

       backgroundColor: Color(0xff243b67),
        child: const Icon(Icons.translate,semanticLabel: "info",size: 30,)
        ,
      ),
      ),
    );
  }
}

