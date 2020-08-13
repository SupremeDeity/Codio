///
/// PrimitiveTypes.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String basicprogram = """
#include <iostream>

using namespace std;

int main() {
  cout << "Hello World!" << endl;

  return 0;
}
""";

class CppPTypes extends StatelessWidget {
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
                  text: "Primitive Types",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
C++ is a strongly typed language, meaning types need to be explicitly assigned. C++ has 6 primitive types. These are: 
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: textstyle1(
                        text:
                            "Integer : Written as int. Integers store whole numbers. For example: 1, 2, 1000",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: textstyle1(
                        text:
                            "Float : Written as float. Float store decimal numbers. For example: 1.24f, 43.1f",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: textstyle1(
                        text:
                            "Double : Written as double. Double is also decimal number but with double precision.",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: textstyle1(
                        text:
                            "Boolean : Written as bool. Booleans are the simplest data type. They can either store 'true' or 'false'.",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: textstyle1(
                        text:
                            "Character : Written as char. Character data type store a single character.",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    color: Theme.of(context).accentColor,
                    child: textstyle1(
                        text:
                            "Void: Written as void. Void can mean different things for different cases. void can either be used to signify that no type of value can be 'returned' by a function or in case of pointer it means it can point to any type.",
                        align: TextAlign.start,
                        size: 15,
                        weight: FontWeight.bold,
                        color: Theme.of(context).primaryColorLight),
                  ),
                ])),
            NoteCard([
              textstyle1(
                text: "Note",
                size: 20,
                color: Theme.of(context).accentColor,
              ),
              Container(
                padding: EdgeInsets.all(5),
              ),
              textstyle1(
                  text:
                      '1. The concepts of Functions and Pointers will be explained later on.',
                  align: TextAlign.start,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
              Container(
                padding: EdgeInsets.all(5),
              ),
              textstyle1(
                  text:
                      "2. Note the 'f' after float numbers. By default literals like 1.23 are treated as double so this is to signify that the number should be treated as a float.",
                  align: TextAlign.start,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
            ])
          ],
        )
      ]),
    );
  }
}
