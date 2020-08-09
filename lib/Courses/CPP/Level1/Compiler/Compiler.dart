///
/// Comments.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:Codio/Components/CustomColors.dart';

class CppCompiler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darker,
      appBar: header(),
      body: ListView(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: CustomColors.primary,
              child: textstyle1(text: "Compiler", size: 20),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: CustomColors.dark,
              child: textstyle1(text: """
Our computers cannot directly understand languages like C++. For the computer to be able to read our instructions and execute them they must be in a language that the computer can understand (Machine language). In simple terms, a compiler translates a high-level language into low-level language. The compiler reads each line one by one from the top, from right to left in case of most languages and checks for syntax errors etc. The output in the end is a object code which is machine code that the processor can understand or in some languages like Java, bytecode which the virtual machine can understand.
""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
            ),
          ],
        )
      ]),
    );
  }
}
