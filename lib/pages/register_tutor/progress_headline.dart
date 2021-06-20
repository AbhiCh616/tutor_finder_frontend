import 'package:flutter/material.dart';

class ProgressHeadline extends StatelessWidget {
  final String _text;

  const ProgressHeadline(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondaryVariant,
            offset: Offset(0.0, 1.0),
            blurRadius: 6,
          ),
        ],
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            _text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
