///
/// Array.dart - SupremeDeity (https://github.com/SupremeDeity)
///

import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Codeblock.dart';
import 'package:Codio/Components/TextStyles.dart';
import 'package:flutter/material.dart';

const String _array_declare = """
float myArray[4]; // declare
myArray = {1.3f, 2.0f, 2.3f, 0.2f};

string myArr[5] = {"David", "Kate"};
""";

const String _access = """
string myArr[5] = {"David", "Kate"};

cout << myArr[0]; // Prints David.
cout << myArr[1]; // Prints Kate.

myArr[2] = "Katerine";
cout << myArr[2]; // Prints Katerine
""";

class CppArray extends StatelessWidget {
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
                  text: "Array",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
Arrays are a way to store multiple of the same type of value in a single variable. There are both fixed-size arrays and arrays that can be resized. We will only be talking about fixed-size arrays in this chapter.""",
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
                  text: "Declaring arrays",
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
                    code: _array_declare,
                    language: "cpp",
                  ),
                  textstyle1(
                      text: """

In the above code block you can see we provide the type, the name and the number of elements we want in the array. The array does not need to be filled as seen in the second array. The number of elements however should not exceed the provided number.""",
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
                  text: "Accessing Arrays",
                  size: 20,
                  color: Theme.of(context).primaryColorLight),
            ),
            Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
                child: Column(children: [
                  textstyle1(
                      text: """
To access the elements of the array we can use the '[ ]' operator. This takes in the 'index' of the element in the array. Index of arrays start from 0 and count upward meaning to access the first element in the array we need to use index 0.
""",
                      align: TextAlign.start,
                      size: 15,
                      weight: FontWeight.normal,
                      color: Theme.of(context).primaryColorLight),
                  Codeblock(
                    code: _access,
                    language: "cpp",
                  ),
                ])),
          ],
        )
      ]),
    );
  }
}
