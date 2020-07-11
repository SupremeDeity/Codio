import 'package:Codio/Components/Bars.dart';
import 'package:Codio/Components/Cards.dart';
import 'package:Codio/Components/PremadeStyle.dart';
import 'package:flutter/material.dart';

class Level2Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: header(),
      backgroundColor: Color.fromRGBO(30, 32, 35, 0.8),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "1", color: Colors.amber),
                  textstyle1(text: "Pre-processor Directives")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "2", color: Colors.amber),
                  textstyle1(text: "Namespace")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "3", color: Colors.amber),
                  textstyle1(text: "Function Basics")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "4", color: Colors.amber),
                  textstyle1(text: "Scopes")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "5", color: Colors.amber),
                  textstyle1(text: "Conditional statements")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "6", color: Colors.amber),
                  textstyle1(text: "Ternary operator")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "7", color: Colors.amber),
                  textstyle1(text: "Basic Arthemetics")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "8", color: Colors.amber),
                  textstyle1(text: "Loop")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "9", color: Colors.amber),
                  textstyle1(text: "Taking Input")
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "10", color: Colors.amber),
                  textstyle1(text: "Switch Statement")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "11", color: Colors.amber),
                  textstyle1(text: "Array")
                ],
              ),
              ButtonCard(
                onTap: () {},
                content: [
                  textstyle1(text: "12", color: Colors.amber),
                  textstyle1(text: "Dynamic Array")
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: footer(),
    ));
  }
}

/**
 * ////////////////////////
 * ///////////////////////
 * ///////////////////////
 * ///////////////////////
 * //////////////////////
 */
