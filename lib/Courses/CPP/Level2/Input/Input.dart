///
/// Input.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _input = """
string name;

cout << "Write your name" << endl;
cin >> name; // name will be set to whatever we input
cout << name;
""";

const String _args = """
type name(type arg_name1, type arg_name2) {
  // the code statements go here...
}
""";

class CppInput extends StatelessWidget {
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
                  text: "Taking input",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
To input data we use a input stream from the iostream library in the std namespace called 'cin'; Its syntax is: """,
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """cin >> variable;""",
                      color: Theme.of(context).primaryColorLight,
                      size: 12),
                ])),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "Example",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Here is an example on how to use it:
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _input,
                    language: "cpp",
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}
