import 'package:Codio/Courses/CPP/Level1/BasicProgram/BasicProgram.dart';
import 'package:Codio/Courses/CPP/Level1/Intro/Intro.dart';
import 'package:Codio/Courses/CPP/Level1/IDE/IDE.dart';
import 'package:Codio/Courses/CPP/Level1/PrimitiveTypes/PrimitiveTypes.dart';
import 'package:Codio/Custom/Bars.dart';
import 'package:Codio/Custom/Cards.dart';
import 'package:Codio/Custom/CustomColors.dart';
import 'package:Codio/Custom/PremadeStyle.dart';
import 'package:flutter/material.dart';

void navigate(BuildContext context, Widget navTo) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => navTo));
}

class Level1Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: header(),
      backgroundColor: CustomColors.darker,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () => navigate(context, CPPIntro()),
                content: [
                  textstyle1(text: "1", color: Colors.amber),
                  textstyle1(text: "Introduction")
                ],
              ),
              ButtonCard(
                onTap: () => navigate(context, CppIDE()),
                content: [
                  textstyle1(text: "2", color: Colors.amber),
                  textstyle1(text: "IDE")
                ],
              ),
              ButtonCard(
                onTap: () => navigate(context, CppBasicProgram()),
                content: [
                  textstyle1(text: "3", color: Colors.amber),
                  textstyle1(text: "Basic Program")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () => navigate(context, CppPTypes()),
                content: [
                  textstyle1(text: "4", color: Colors.amber),
                  textstyle1(text: "Primitive Types")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "5", color: Colors.amber),
                  textstyle1(text: "Variables")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "6", color: Colors.amber),
                  textstyle1(text: "Printing Hello World")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "7", color: Colors.amber),
                  textstyle1(text: "Linker & Compiler")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "8", color: Colors.amber),
                  textstyle1(text: "Comments")
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: footer(),
    ));
  }
}
