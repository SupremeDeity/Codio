///
/// BasicProgram.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _basicprogram = """
#include <iostream>

using namespace std;

int main() {
  cout << "Hello World!";

  return 0;
}
""";

class CppBasicProgram extends StatelessWidget {
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
                  text: "Basic C++ Program",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
There was a lot of rambling on about some things that a programmer should know but no code regarding C++ was actually shown. So here is a small snippet of a very basic C++ program that prints Hello World! to the screen:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(code: _basicprogram, language: "cpp"),
                ])),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "Main Function",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Let's not worry about the other stuff for now and take a look at a very important function (more on this topic later).
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """int main() {}""",
                      color: Theme.of(context).primaryColorLight),
                  textstyle1(
                      text: """

This is called the main function. This is the starting point of any program. Any code you put inside this function will be automatically executed. Other custom functions dont get called automatically and must be called directly or indirectly from the main function.
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                ])),
          ],
        )
      ]),
    );
  }
}
