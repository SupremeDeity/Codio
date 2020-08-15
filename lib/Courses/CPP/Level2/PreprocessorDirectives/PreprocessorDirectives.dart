///
/// PreprocessorDirectives.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description:
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _define = """
#include <iostream>
#define NUM 100
#define NUM2(a) a

using namespace std;

int main() {
  cout << NUM << std::endl; // Outputs 100
  cout << NUM2(200) << std::endl; // outputs 200
  return 0;
}
""";

class PreprocessorDirectives extends StatelessWidget {
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
                  text: "Preprocessor Directives",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
Preprocessor Directives are one of the most important parts in your code. As the name suggests, these are directives that we give to the preprocessor. These are not program statements and do not need to ended with a semi-colon (;). 

Preproprocessor Directives start with a # sign and span over a single line. Each preprocessor directive has its own purpose and these are examined and resolved before the actual compilation of the program. 
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
                  text: "Directives",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
We will not be talking about all the directives here, we will only talk about 2 of them here.
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """#include""",
                      color: Theme.of(context).primaryColorLight,
                      size: 20),
                  textstyle1(
                      text: """

This is one of the most important preprocessor directive. As you may have remembered, this directive was used in our basic program. This directive copies the contents of the included file and pastes it in place of the directive. In our basic program it was mandatory to use it as we needed to use the cout stream function and this function is defined in the <iostream> library.
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  textstyle2(
                      text: """#define""",
                      color: Theme.of(context).primaryColorLight,
                      size: 20),
                  textstyle1(
                      text: """

This directive is used to define macros. Its syntax is: #define identifier statement. 
When the identifier is used it will be replaced by the statement. The identifier can also take in parameters. For example: 
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _define,
                    language: "cpp",
                  )
                ])),
          ],
        )
      ]),
    );
  }
}
