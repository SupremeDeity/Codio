///
/// Cards.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: Custom Cards for use in Codio
///

import 'package:flutter/material.dart';

/// Customised card for use in the application.
///
/// This card is customised to fit the needs of the application.
class CustomCard extends StatelessWidget {
  final List<Widget> widgets;

  CustomCard({this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: Card(
          elevation: 6,
          color: Theme.of(context).primaryColor,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: widgets,
              ),
            ),
          ]),
        ));
  }
}

/// Customised Card which can be used as a button.
///
/// This card is wrapped inside a button to add the characterstics of a button to it.
class ButtonCard extends StatelessWidget {
  final List<Widget> content;
  final Function() onTap;
  final Color color;
  final Color disabledColor;
  ButtonCard({this.content, this.onTap, this.color, this.disabledColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          color: color ?? Theme.of(context).accentColor,
          disabledColor: disabledColor,
          onPressed: onTap,
          child: Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.max,
            children: content,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}

/// A customised card to be used when providing notes throughout the course.
class NoteCard extends StatelessWidget {
  final List<Widget> content;

  NoteCard(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Card(
          elevation: 6,
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: content,
            ),
          )),
    );
  }
}
