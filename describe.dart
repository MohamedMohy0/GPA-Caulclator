import 'package:flutter/material.dart';
import 'package:GPACalculator/welcomeScreen.dart';
import 'describea.dart';

void main() {
  runApp(const describeaScreen());
}

class describeaScreen extends StatefulWidget {
  const describeaScreen({Key? key}) : super(key: key);

  @override
  describeaScreenstate createState() => describeaScreenstate();
}

class describeaScreenstate extends State<describeaScreen> {
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
        body: SafeArea(
          child: Container(
            color: Color(0xff17181c),
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 30),
                     Text(
                      " اختيار نظام المعدل التراكمي الخاص بك   ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "اختيار نوع الحسبة اللتي تود القيام بها",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      " عند اختيار حساب المعدل التراكمي للفصل نقوم بكتابة عدد الساعات لكل مادة واختيار التقدير ثم الضغط علي  ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      " زر اضافة واحدة تلو الاخري",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      " اذا تم اضافة بيانات عن طريق الخطأ او الرغبة ف القيام  ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      "  ب حسبة جديدة نقوم بالضغط علي زر ازالة ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "  عند اختيار حساب المعدل التراكمي ل اجمالي الفصول  ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      "        نقوم ب اضافة المعدل التراكمي السابق والساعات ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      "              السابقة ثم اضافة بيانات الفصل الجديد",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "              :التقديرات لنظام المعدل التراكمي الامريكي ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                      "A+=4 , A=3.667 , B+=3.334 , B=3 , C+=2.667 , C=2.334  , D=2  , F=0 ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "              :التقديرات لنظام المعدل التراكمي البريطاني ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    Text(
                       "A+=4 , A=4 , A-=3.7, B+=3.3 , B=3 , B-=2.7 , C+=2.3 , C=2 , C-=1.7 , D+=1.3 , D=1  , F=0 ",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                    SizedBox(height:100),
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
                                    builder: (context) => describeeScreen()));
        },

       backgroundColor: Color(0xff243b67),
        child: const Icon(Icons.translate,semanticLabel: "info",size: 30,)
        ,
      ),),
    );
  }
}
