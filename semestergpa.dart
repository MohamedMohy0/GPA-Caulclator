import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:GPACalculator/welcomeScreen.dart';

void main() {
  runApp(const semesterScreen());
}

class semesterScreen extends StatefulWidget {
  const semesterScreen({Key? key}) : super(key: key);

  @override
  semesterScreenstate createState() => semesterScreenstate();
}

class semesterScreenstate extends State<semesterScreen> {
  @override
  double gpa = 0;
  double course_num = 0;
  double hour = 0;
  double total = 0;
  double gp = 0;
  double totalhour = 0;
  final items = ["A+", 'A', 'B+', "B", 'C+', "C", "D", "F"];
  var gpp = {
    "A+": 4,
    "A": 3.667,
    "B+": 3.334,
    "B": 3,
    "C+": 2.667,
    "C": 2.334,
    "D": 2,
    "F": 0
  };

  void add() {
    setState(() {
      var val = value.toString();
      if (val == "A+") {
        gp = hour * 4;
      }
      if (val == "A") {
        gp = hour * 3.667;
      }
      if (val == "B+") {
        gp = hour * 3.334;
      }
      if (val == "B") {
        gp = hour * 3;
      }
      if (val == "C+") {
        gp = hour * 2.667;
      }
      if (val == "C") {
        gp = hour * 2.334;
      }
      if (val == "D") {
        gp = hour * 2;
      }
      if (val == "F") {
        gp = hour * 0;
      }
      totalhour = totalhour + hour;
      total = total + gp;
      course_num += 1;
    });
  }

  void clear() {
    setState(() {
      total = 0;
      totalhour = 0;
      course_num = 0;
    });
  }

  void calc() {
    setState(() {
      gpa = total / totalhour;
    });
  }

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
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => welcomeScreen()));
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
        body: Center(
          child: Container(
            color: Color(0xff17181c),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Credit hour for the course",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[],
                        style: TextStyle(color: Color(0xffffffff)),
                        cursorColor: Color(0xffffffff),
                        onChanged: (val) {
                        setState(() {
                          var h = double.parse(val);
                          hour = h;
                        });
                      },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff243b67)),
                          ),
                          labelText: "Credit hour",
                          labelStyle: TextStyle(color: Color(0xffffffff)),
                          hintText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          hintStyle: TextStyle(color: Color(0xffffffff)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "GPA For Course",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                    SizedBox(
                      height: 20,
                    ),
                    
                          Material(
                            elevation: 5,
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(24),
                            child: MaterialButton(
                              onPressed: () {
                                add();
                              },
                              minWidth: 150,
                              height: 40,
                              child: Text("Add",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                       SizedBox(height: 10,),
                          Material(
                            elevation: 5,
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(24),
                            child: MaterialButton(
                              onPressed: () {
                                clear();
                              },
                              minWidth: 150,
                              height: 30,
                              child: Text("Clear",
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        
                      SizedBox(height: 10,),
                    
                    Text(
                      "Number Of Courses Inserted:  " "$course_num",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 5,
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(24),
                      child: MaterialButton(
                        onPressed: () {
                          calc();
                        },
                        minWidth: 200,
                        height: 40,
                        child:
                            Text("Calc", style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "The GPA Is :  ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      '$gpa',
                      style: TextStyle(color: Color(0xffffffff)),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
