///
/// Intro2.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

String code = """
_fib:
        movl \$1, %eax
.fib_loop:
        cmpl \$1, %edi
        jbe .fib_done
        movl %eax, %ecx
        addl %ebx, %eax
        movl %ecx, %ebx
        subl \$1, %edi
        jmp .fib_loop
.fib_done:
        ret
""";

class Intro2 extends StatelessWidget {
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
                  text: "Low-Level programing language",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
A low-level programing language is harder to learn, read and understand than a high-level programing language and are mostly dependent on a single type of computer, meaning that different versions of the same code will need to be written to make the code work in different computers.

Machine language is a language the computer directly understands, its a low-level language that consists of 0s or 1s.

Low-level languages provide a lot of control over the hardware. Assembly, FORTRAN, COBOL, Ada are examples of low-level programing languages.""",
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
Just in case you were wondering how a low-level language looks like, this is x86-64 Assembly code for calculating fibonacci number:
""",
                    align: TextAlign.start,
                    size: 15,
                    weight: FontWeight.normal,
                    color: Theme.of(context).primaryColorLight),
                Codeblock(code: code, language: "x86asm")
              ]),
            ),
          ],
        )
      ]),
    );
  }
}
