///
/// SwitchStatement.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _switch = """
int a = 3;
    
switch(a) {
  case 1:
    cout << 1;
    break;
  case 3:
    cout << 3;
    break;
     
  default:
    cout<< 2;
}
""";

const String _switchb = """
string day = "tuesday";
    
switch(a) {
  case "monday":
  case "tuesday":
  case "wednesday":
  case "thursday":
  case "friday":
    cout << "valid day";
    break;

  case "kate":
  case "cate":
    cout << "Invalid day";

  default:
    cout<< "Unknown result";
}
""";

class CppSwitchStatement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: header(context),
      body: ListView(children: [
        Column(children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Theme.of(context).accentColor,
            child: textstyle1(
                text: "Switch statement",
                size: 20,
                color: Theme.of(context).primaryColorLight),
          ),
          Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: Column(children: [
                textstyle1(
                    text: """
Switch statement is one of the conditional statements. If you want to do different things depending on the value of a variable then you might prefer using this.""",
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
                text: "Using Switch statement",
                size: 20,
                color: Theme.of(context).primaryColorLight),
          ),
          Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: Column(children: [
                Codeblock(
                  code: _switch,
                  language: "cpp",
                ),
                textstyle1(
                    text: """

In the above we are checking the value of a variable called 'a', we check if the value is equal to 1 or 3 and if its not equal to both we print something else. After 'case' we put what we are comparing the value to and default here works as a else statement. Also note the 'break' keyword. This stops the switch statement from checking other statements and quits out of the switch statement. This can be used for our advantage if we want the same result for different statements: 
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                Codeblock(
                  code: _switchb,
                  language: "cpp",
                ),
                textstyle1(
                    text: """

In the above code block as long as the value is monday, tuesday, wednesday, thursday or friday it will print 'valid day', if its 'kate' or 'cate' it will print 'invalid day' and if its none of these then it will print 'unknown result';

The switch statement will keep checking and executing cases that match the requirement until a break statement is encountered.
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
              ])),
        ])
      ]),
    );
  }
}
