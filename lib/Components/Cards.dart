///
/// Cards.dart - SupremeDeity (https://github.com/SupremeDeity
/// Description: Custom Cards for use in Codio
///

import './CustomColors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final List<Widget> widgets;

  CustomCard({this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: Card(
          elevation: 6,
          color: CustomColors.dark,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: widgets,
              ),
            ),
          ]),
        ));
  }
}

class ButtonCard extends StatelessWidget {
  final List<Widget> content;
  final Function() onTap;
  final Color color;
  final Color disabledColor;
  ButtonCard(
      {this.content,
      this.onTap,
      this.color = CustomColors.primary,
      this.disabledColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          color: color,
          disabledColor: disabledColor,
          onPressed: onTap,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: content),
        ));
  }
}

class NoteCard extends StatelessWidget {
  final List<Widget> content;

  NoteCard(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Card(
          elevation: 6,
          color: CustomColors.dark,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: content,
            ),
          )),
    );
  }
}
