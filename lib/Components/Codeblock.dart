import 'package:flutter_highlight/themes/vs.dart';
import 'package:flutter_highlight/themes/vs2015.dart';

///
/// Codeblock.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: A wrapper component around flutter_highlight for easy display of codeblocks
///

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';

import 'CustomColors.dart';

/// Create a codeblock with syntax-highlighting.
class Codeblock extends StatelessWidget {
  final String code;
  final String language;

  Codeblock({this.code, this.language = "text"});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).hintColor == CustomColors.light
        ? vsTheme
        : vs2015Theme;
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).accentColor,
                blurRadius: 2.0,
                spreadRadius: -4)
          ],
        ),
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(3),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(language,
                        style: GoogleFonts.abel(
                          letterSpacing: 2,
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ))
                  ])),
              Container(
                  width: double.infinity,
                  child: HighlightView(
                    code,
                    padding: EdgeInsets.all(4),
                    language: language,
                    theme: theme,
                    textStyle: GoogleFonts.firaCode(),
                  )),
            ],
          ),
        ));
  }
}
