import 'package:Codio/RouteGenerator.dart';

///
/// Buttons.dart - SupremeDeity (https://github.com/SupremeDeity)
/// Description: Customized Raised Buttons for showing courses
///

import './CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'TextStyles.dart';

/// Button Template.
class ButtonStyleOne extends StatelessWidget {
  final String name;
  final String img;
  final Widget widgetHandle;
  final Function routeHandle;
  final BuildContext inputContext;

  /// For Use with navigating to widgets.
  ButtonStyleOne(
    this.name,
    this.img,
    this.widgetHandle,
    this.inputContext,
  ) : routeHandle = null;

  /// For navigating to routes.
  ButtonStyleOne.route(
    this.name,
    this.img,
    this.routeHandle,
    this.inputContext,
  ) : widgetHandle = null;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 200,
        child: RaisedButton(
            color: CustomColors.primary,
            onPressed: (routeHandle == null
                ? () => RouteGenerator.navigate(context, widgetHandle)
                : routeHandle),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  img,
                  fit: BoxFit.contain,
                  width: 32,
                  height: 32,
                ),
                textstyle4(
                    text: name,
                    color: CustomColors.dark,
                    size: 15,
                    weight: FontWeight.normal),
              ],
            )));
  }
}
