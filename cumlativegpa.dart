

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:GPACalculator/welcomeScreen.dart';

void main() {
  runApp(new cumlativeeScreen());
}

class cumlativeeScreen extends StatefulWidget {
  const cumlativeeScreen({Key? key}) : super(key: key);

  @override
  cumlativeeScreenstate createState() => cumlativeeScreenstate();
}

class cumlativeeScreenstate extends State<cumlativeeScreen> {
  @override
  double gpa = 0;
  int prevh = 0;
  int hour = 0;
  double prevg = 0.0;
  double gp = 0.0;

  void calc() {
    setState(() {
      gpa = (prevh * prevg + hour * gp) / (prevh + hour);
      
    });
  }

  Widget build(BuildContext context) {
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
                    height: 20,
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
                          var pevg = double.parse(val);
                          prevg = pevg;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff243b67)),
                        ),
                        labelText: "Previous GPA",
                        labelStyle: TextStyle(color: Color(0xffffffff)),
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintStyle: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: TextStyle(color: Color(0xffffffff)),
                      cursorColor: Color(0xffffffff),
                      onChanged: (val) {
                        setState(() {
                          var pevh = int.parse(val);
                          prevh = pevh;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff243b67)),
                        ),
                        labelText: " Previous Hours",
                        labelStyle: TextStyle(color: Color(0xffffffff)),
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintStyle: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[],
                      style: TextStyle(color: Color(0xffffffff)),
                      cursorColor: Color(0xffffffff),
                      onChanged: (val) {
                        setState(() {
                          var g = double.parse(val);
                          gp = g;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff243b67)),
                        ),
                        fillColor: Color(0xffffffff),
                        labelText: "Semester GPA",
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
                    height: 15,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: TextStyle(color: Color(0xffffffff)),
                      cursorColor: Color(0xffffffff),
                      onChanged: (val) {
                        setState(() {
                          var ho = int.parse(val);
                          hour = ho;
                        });
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff243b67)),
                        ),
                        fillColor: Color(0xffffffff),
                        labelText: "Semester Hours",
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
                    height: 40,
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
                    
                    "The Cumulative GPA Is :" ,
                    style: TextStyle(color: Color(0xffffffff)),
                  ),
                  Text('$gpa',
                  style: TextStyle(color: Color(0xffffffff)),),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
