import 'package:Codio/Custom/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

import 'package:flutter_highlight/themes/vs2015.dart';

class Codeblock extends StatelessWidget {
  final String code;
  final String language;

  Codeblock(this.code, this.language);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: CustomColors.primary, blurRadius: 2.0, spreadRadius: -4)
          ],
        ),
        child: Card(
          color: CustomColors.dark,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(3),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      language,
                      style: TextStyle(
                        letterSpacing: 2,
                        fontFamily: "Roboto",
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ])),
              Container(
                  width: double.infinity,
                  child: HighlightView(
                    code,
                    padding: EdgeInsets.all(4),
                    language: language,
                    theme: vs2015Theme,
                    textStyle: TextStyle(fontFamily: "FiraCode"),
                  )),
            ],
          ),
        ));
  }
}
