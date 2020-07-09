import 'package:Codio/Custom/Bars.dart';
import 'package:Codio/Custom/Cards.dart';
import 'package:Codio/Custom/Codeblock.dart';
import 'package:Codio/Custom/PremadeStyle.dart';
import 'package:flutter/material.dart';
import 'package:Codio/Custom/CustomColors.dart';

const String basicprogram = """
#include <iostream>

using namespace std;

int main() {
  cout << "Hello World!" << endl;

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
                    Codeblock(basicprogram, "cpp"),
                    textstyle1(
                        text: """

If you already know some programming this wont be too hard to understand and for beginners, no need to worry because all the statements written here and much more will be explained later on.""",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.normal)
                  ])),
            ],
          )
        ]),
      ),
    );
  }
}
