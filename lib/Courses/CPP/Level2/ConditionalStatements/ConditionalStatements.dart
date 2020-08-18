///
/// Functions1.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _if_else = """
if(3 > 4) {
  cout << "3 is bigger than 4";
}

else {
  cout << "3 is smaller than 4";
}
""";

const String _else_if = """
if(3 > 4) {
  cout << "3 is bigger than 4";
}

else if (4 > 3) {
  cout << "3 is smaller than 4";
}

else {
  cout << "This is printed if none of the other conditions are true";
}
""";

class CppConditional extends StatelessWidget {
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
                  text: "Conditional Statements",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
While programming you will come across scenarios where you will want to only execute a piece of code if a certain condition is met. This is what conditional statements are used for.

There are different kinds of conditional statements. For example: if, else and else if. We will explain all of these here. Switch statement will be explained in another part.
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
                  text: "If & else statements",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Consider the following:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _if_else,
                    language: "cpp",
                  ),
                  textstyle1(
                      text: """

The above code block will always print the code in the else statement. Lets break this down a bit. We have if statement and we are providing a condition in the (). We can use different operators to create different conditions. The operators are as follows:

> : greater than.
< : lesser than.
>= : greater than or equal to.
<= : lesser than or equal to.
== : equal to.
! : not
!= : not equal to.
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
                  text: "else if",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
If you want to check for multiple conditions then you can use else if statements. You can also pair this with a else statement in case none of the conditions match:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _else_if,
                    language: "cpp",
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}
