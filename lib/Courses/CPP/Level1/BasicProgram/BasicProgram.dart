///
/// BasicProgram.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:flutter/material.dart';
import 'package:Codio/Components/CustomColors.dart';

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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColors.darker,
        appBar: header(),
        body: ListView(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: CustomColors.primary,
                child: textstyle1(text: "Basic C++ Program", size: 20),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  color: CustomColors.dark,
                  child: Column(children: [
                    textstyle1(text: """
There was a lot of rambling on about some things that a programmar should know but no code regarding C++ was actually shown. So here is a small snippet of a very basic C++ program that prints Hello World! to the screen:
""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                    Codeblock(code: _basicprogram, language: "cpp"),
                  ])),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: CustomColors.primary,
                child: textstyle1(text: "Main Function", size: 20),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  color: CustomColors.dark,
                  child: Column(children: [
                    textstyle1(text: """
Let's not worry about the other stuff for now and take a look at a very important function (more on this topic later).
""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                    textstyle2(text: """int main() {}"""),
                    textstyle1(text: """

This is called the main function. This is the starting point of any program. Any code you put inside this function will be automatically executed. Other custom functions dont get called automatically and must be called directly or indirectly from the main function.
""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                  ])),
            ],
          )
        ]),
      ),
    );
  }
}
