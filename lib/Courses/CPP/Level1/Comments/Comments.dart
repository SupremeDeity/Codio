///
/// Comments.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

String singleline = """
// This is a single-line comment
This line wont be considered comment
int myInt = 2; // You can put them after statements.
""";
String multiline = """
/*
We can write whatever we want here 
and it will be considered a comment. 
This can span as many lines as we want.
*/
This line wont be considered a comment
""";

class CppComments extends StatelessWidget {
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
                  text: "Comments",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
While programming there might come a time when you want to explain what a function or line of code does. This maybe because you are sharing your code with others and you want to explain them the usage of the code or maybe you want to keep a pointer for your own self.

This is where comments come in. You can easily put lines of text to explain what you want and these wont interfere with the code. Comments simply dont get compiled.

We have been using comments in the previous topics. There are two types of comments:

1. Single-line comments
2. Multi-line comments
""",
                  align: TextAlign.start,
                  size: 15,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "Single-line comments",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: Column(children: [
                textstyle1(
                    text: """
Single-line comments start with double forward slashes (//). These make whatever is written after them into a comment. However as the name suggest, they only work for single lines.
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                Codeblock(
                  code: singleline,
                  language: "cpp",
                ),
              ]),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "Multi-line comments",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: Column(children: [
                textstyle1(
                    text: """
Multi-line comments can span over as many lines as you want. These start with /* and end with */.
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                Codeblock(
                  code: multiline,
                  language: "cpp",
                ),
              ]),
            ),
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
                      'Only text after // is considered a comment, so you can put comments after code statements as shown in example.',
                  align: TextAlign.start,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
              Container(
                padding: EdgeInsets.all(5),
              ),
            ])
          ],
        )
      ]),
    );
  }
}
