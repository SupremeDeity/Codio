///
/// Variables1.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

class CppVariables1 extends StatelessWidget {
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
                  text: "Variables",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
Variables are containers of data. They can be assigned a name, specifier, data type and a value. The data type of the variable can be those we discussed in the earlier topic or ones that we create ourselves.
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
                  text: "Syntax",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: Column(children: [
                textstyle1(
                    text: """To declare a variable we use the following syntax:
                        """,
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                textstyle2(
                    text: "type variablename;",
                    color: Theme.of(context).primaryColorLight),
                textstyle1(
                    text: """

One thing to note is that we use a ';' at the end of this statement. This is how C++ knows that our statement has ended because in the end C++ does not care about the indents and even if you put multiple statements in the same line as long as each statement is ended with a semi-colon: 
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                textstyle2(
                    text: "type var1; type var2;",
                    color: Theme.of(context).primaryColorLight),
                textstyle1(
                    text: """

When defining variables meaning assigning a value to variables (because that is the main purpose of variables) we use a '=' sign:
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                textstyle2(
                    text: "type variablename = value;",
                    color: Theme.of(context).primaryColorLight)
              ]),
            ),
          ],
        )
      ]),
    );
  }
}
