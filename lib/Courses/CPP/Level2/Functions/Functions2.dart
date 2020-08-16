///
/// Functions2.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _example = """
#include <iostream>

using namespace std;

void PrintHello() {
  cout << "Hello" << endl;
}

void PrintSomething(string text) {
  cout << text << endl;
}

int main () {
  PrintHello();
  PrintHello();
  PrintHello();
  PrintSomething("Bye");

  // Outputs 
  // Hello
  // Hello
  // Hello
  // Bye
  return 0;
}
""";

class CppFunctions2 extends StatelessWidget {
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
                  text: "Calling functions",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
After a function has been created, it must be called. main function automatically gets called however all other functions must be called indirectly or directly from the main() function. To call a function we use the following syntax: 
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """func_name(args);""",
                      color: Theme.of(context).primaryColorLight,
                      size: 15),
                ])),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "Example",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Here is a basic example of calling functions. Note how we are using functions to re-use code:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _example,
                    language: "cpp",
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}
