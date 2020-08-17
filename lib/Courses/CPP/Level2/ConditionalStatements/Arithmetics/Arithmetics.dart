///
/// Arithmetics.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _maths = """
int a = 6 + 7;
int b = 4 - 9;
int c = 6 * 8;
int d = 6 / 2;
int e = (5*3) - 5 * (10/8); // Order precedence is also taken into account.

cout << a << endl; // Prints 13
cout << b << endl; // Prints -5
cout << c << endl; // Prints 48
cout << d << endl; // Prints 3
cout << e << endl; // Prints 10
""";

class CppArithmetics extends StatelessWidget {
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
                  text: "Arithmetics",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Arithmetics is very important in programs and one of the basic features of any programming language. The following operators are used for the 4 basic operations:

1) + => Addition
2) - => Subtraction
3) * => Multiplication
4) / => Division

Modulus (%) is also available for calculating remainder, together with a math library with provides more utility features however those will talked about in a later section.
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
                  text: "Using the operators",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Using the operators to perform the operations is very easy: 
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _maths,
                    language: "cpp",
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}
