///
/// Namespace2.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description:
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _using = """
#include <iostream>

using namespace std; // Here std is the name of the namespace

int main () {
  cout << "Hello!"; // In here cout is the stream object from the std namespace. 

  return 0;
}
""";

const String _operator = """
#include <iostream>

int main () {
  std::cout << "Hello!"; // In here cout is the stream object from the std namespace. 

  return 0;
}
""";

class CPPNamespace2 extends StatelessWidget {
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
                  text: "Using namespaces",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
After creating namespaces we need to have a way to tell the program which namespace's function/variable/class are we talking about. There are two ways to do this:

1) Using the 'using namespace' statement.
2) Using the '::'
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
                  text: "using namespace statement",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
You might remember this way of using namespaces if you remember the code from the basic program. We basically use the syntax: using namespace namespace_name; when using this method:

""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _using,
                    language: "cpp",
                  ),
                  textstyle1(
                      text: """

cout is actually a stream object that is declared in the std namespace, hence the reason we use 'using namespace std;' Without this statement our compiler will throw us an error.
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
                  text: "using ::",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
The second way of using namespaces is simple. Instead of using the 'using namespace' statement, we can just append namespace_name:: at the start of every function/variable/class that we need. For example:

""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _operator,
                    language: "cpp",
                  ),
                  textstyle1(
                      text: """

Since cout is from the std namespace we just appended std:: at the start of it and we are good to go. Different programmers have different choices. You can select any of the two methods, however this method provides more clarification.
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
