///
/// Variables.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:Codio/Components/CustomColors.dart';

final String _wrongcode = """
// since type is not a datatype, this is not valid code and only for demonstration purposes.
type _varname = val; // Correct
type varname = val; // Correct
type varname3 = val; // Correct

type 8varname = val; // Wrong
type var name = val; // Wrong
type int = val; // Wrong (int is a reserved keyword to use for types.)
""";

final String _code = """
// Declaring variable
int myVar;

// Defining the previously defined variable later on
myVar = 3; // the data type is not written when setting the value later on.

// Declaring and defining at the same time.
double decimalVariable = 3.2;

// Changing the value once again
decimalVariable = 4.2;
myVar = 6;
""";

class CppVariables2 extends StatelessWidget {
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
              child: textstyle1(text: "Variable Naming Rules", size: 20),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: CustomColors.dark,
              child: Column(children: [
                textstyle1(text: """
Variable names must follow some rules:

1. Variables names must not have spaces or any special characters.
2. Variable names can only contain letters, digits and underscore.
3. Variable names cannot start with digits. They must start with a underscore or a letter.
4. Variable names can not contain any reserved keyword. More on reserved keyword will be discussed later. 
""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                Codeblock(
                  code: _wrongcode,
                  language: "cpp",
                )
              ]),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: CustomColors.primary,
              child: textstyle1(text: "Examples", size: 20),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: CustomColors.dark,
              child: Column(children: [
                textstyle1(text: """
These are some examples for showing how to declare and define variables.

""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                Codeblock(
                  code: _code,
                  language: "cpp",
                )
              ]),
            ),
            NoteCard([
              textstyle1(
                text: "Note",
                size: 20,
                color: CustomColors.primary,
              ),
              Container(
                padding: EdgeInsets.all(5),
              ),
              textstyle1(
                  text:
                      'A variable does not need to be immediately defined. You can declare a variable and then assign its value at any point after that or change its existing value or you can assign its value at the point and change its value afterwards. This was shown in the example above.',
                  align: TextAlign.start,
                  weight: FontWeight.normal),
            ])
          ],
        )
      ]),
    );
  }
}
