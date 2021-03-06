///
/// IDE.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

class CppIDE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: header(context),
      body: ListView(physics: PageScrollPhysics(), children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).accentColor,
              child: textstyle1(
                  text: "IDE",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
An IDE(Integrated Development Environment) is a tool that is used to write programs. A IDE is
basically different tools packed into one to help ease in writing programs. A IDE typically contains a text editor to write code in, a debugger to debug code and a compiler/linker to compile and link the program into a executable format.

Logically speaking, C++ code can written in any text editor like notepad and then compiled using a compiler. However writing code this way is inefficient as this errors will not be shown to you while you write the code, improvement to code and warnings will not be shown and overall the tools provided by a IDE will not be available.

There are many different IDEs available to write code in C++. Examples of these are Visual Studio, Visual Studio Code and Codeblock.
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
                  text: "Visual Studio",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
While you can use other IDEs, we will be recommending that you use Visual studio. It is developed and maintained by Microsoft and is free to use. It is an excellent IDE with a very good compiler and useful features like intellisense which highlights errors and warnings. The UI looks good too and setting up projects is pretty easy aswell.
""",
                  align: TextAlign.start,
                  size: 15,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
            ),
          ],
        )
      ]),
    );
  }
}
