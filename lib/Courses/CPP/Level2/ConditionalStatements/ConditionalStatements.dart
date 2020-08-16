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

There are different kinds of conditional statements. For example: if, else, else if and switch. We will explain all of these here.
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "switch",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
If you only want to check a certain value and do different things depending on the value then you might want to use switch instead of if statements: 
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
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
          ],
        )
      ]),
    );
  }
}
