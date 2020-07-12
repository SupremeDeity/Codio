///
/// HelloWorld.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:flutter/material.dart';
import 'package:Codio/Components/CustomColors.dart';

final String _code = """
#include <iostream>

using namespace std;

int main() {
  cout << "Hello, World!";
}
""";

final String _example = """
#include <iostream>

using namespace std;

int main() {
  cout << "Hello, World!";

  int val = 3;
  int val2 = 55;
  cout << "\\nValue of val is: " << val << endl;
  cout << val2;

  /*
  Output:
  Hello, World!
  Value of val is: 3
  55
  */
}
""";

class CppHelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CustomColors.darker,
        appBar: header(),
        body: ListView(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: CustomColors.primary,
                child: textstyle1(text: "Printing Hello World", size: 20),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: CustomColors.dark,
                child: Column(children: [
                  textstyle1(text: """
Till this point we have discussed some basics and not yet discussed anything about how to display some text on our screen.

Here is how to print Hello, World! to the console. The code will be explained later on.

""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                  Codeblock(
                    code: _code,
                    language: "cpp",
                  )
                ]),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: CustomColors.primary,
                child: textstyle1(text: "Explanation", size: 20),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                color: CustomColors.dark,
                child: Column(children: [
                  textstyle1(
                    text: """
First of all, the line:
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                  ),
                  textstyle2(text: "#include <iostream>"),
                  textstyle1(text: """

Is very important, the file iostream is a file provided by C++ provides cout. Includes will be explained later on so don't worry about them too much for now.

Since the 'stream' is inside the 'main function', it gets executed automatically. Strings or characters must be enclosed with quotes, types like int and double can be written without them. You can print out the values of variables aswell.
""", align: TextAlign.start, size: 15, weight: FontWeight.normal),
                  Codeblock(
                    code: _example,
                    language: "cpp",
                  ),
                  textstyle1(
                    text: """

Streams are difficuly to explain here but we use '<<' to give data to a stream or '>>' to take data from the stream. cout is a input stream so we use '>>' to give data to it. We can also use it to concatenate different things on the stream as shown in the example above.

'\\n' is a escape sequence to insert a newline and is used inside a string. 'endl' won't work inside a string and must be appended using '<<'. It also inserts a newline together with a extra function of flushing the stream.
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                  )
                ]),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
