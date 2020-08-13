///
/// Intro1.dart - SupremeDeity (https://github.com/SupremeDeity
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
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
                  text: "Introduction",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
C++ is a high-level programing language created by Bjarne Stroustrup as a superset to C.

C++ is a very powerful programing language that is used by many programmers through the globe. It can be used to create almost anything you can imagine.

It is the prefered language for the development of game engines or applications that require speed, optimization and/or a lot of control over memory management.""",
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
                  text: "High level programming language",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).primaryColor,
              child: textstyle1(
                  text: """
In the earlier discussion we told you that C++ is a "High-level programing language", but what does it mean for a language to be High-level?

High-level programming languages are programing languages that are easier to read and write than low-level programing languages. They are more closer to human language and less dependent on the type of computer. However unlike low-level programing language, High-level programing languages dont provide as much control over the hardware.

For this reason, boot-loaders are usually written in Assembly.""",
                  align: TextAlign.start,
                  size: 15,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
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
                      '1. C++ code is also compiled down to assembly code which later gets compiled to machine code.',
                  align: TextAlign.start,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
              Container(
                padding: EdgeInsets.all(5),
              ),
              textstyle1(
                  text:
                      '2. Since C++ is a subset of C, any C program is a valid C++ program.',
                  align: TextAlign.start,
                  weight: FontWeight.normal,
                  color: Theme.of(context).primaryColorLight),
            ])
          ],
        )
      ]),
    );
  }
}
