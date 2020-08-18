///
/// Loops.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _for = """
for(int x = 0; x < 5; x++) {
  cout << x;
}

// Output
// 01234
""";

const String _while = """
int x = 0;

while (x < 3) {
  cout << x;
  x++; // Increments the value of x by 1
}

// Infinite loop
while(true) {}

// Ouputs
// 012
""";

const String _do_while = """
int x = 0;

do {
  cout << x;
  x++;
} while(x < 3);

// Ouputs
// 012
""";

class CppLoops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: header(context),
      body: ListView(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "Loops",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Loops are a way of repeatedly executing a block of code until a condition is met. There are three types of loops in C++.   

1) For loop
2) While loop
3) do-while loop
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                ])),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "For loop",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
For loop is one of the most commonly used loop. This is also called a 'counter loop' because this loop keeps a 'counter' variable which can increment/decrement each iteration. Its syntax is:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text:
                          """for(variable initialization; condition; increment/decrement) {}
                          """,
                      color: Theme.of(context).primaryColorLight,
                      size: 12),
                  Codeblock(
                    code: _for,
                    language: "cpp",
                  ),
                  textstyle1(
                      text: """

As you can see we initialize our counter variable, then give a condition which in this case is that x is less 4 and then we can either increment or decrement the value of the counter variable each iteration. 

Note that the value of the counter variable is increased or decreased after each iteration so x initially starts with 0 as that is what we initialized it to.
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                ])),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "While loop",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
While loops are usually used when we need a loop where we are not certain when the condition will be reached. Another usage of while loop is to create 'inifinite loops' meaning the code will keep looping until the program is exited. However the other loops can be used to achieve this aswell. Its syntax is:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """while(condition) {}
                      """,
                      color: Theme.of(context).primaryColorLight,
                      size: 15),
                  Codeblock(
                    code: _while,
                    language: "cpp",
                  ),
                ])),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "do-while loop",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
A do-while loop is similar to a while loop except that it is guranteed to execute atleast one time. This is due to the fact that the do-while loop checks the condition after each iteration instead of before a iteration like for or while loop. Its syntax is:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """do {} while(condition);
                      """,
                      color: Theme.of(context).primaryColorLight,
                      size: 15),
                  Codeblock(
                    code: _do_while,
                    language: "cpp",
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}
