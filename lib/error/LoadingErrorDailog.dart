import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:meet_ups/Pages/Login.dart';
import 'package:page_transition/page_transition.dart';

class LoadingErrorDialog extends StatelessWidget {
  final String message;

  const LoadingErrorDialog({required Key key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message),
      actions: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                PageTransition(child: Login(), type: PageTransitionType.fade));
          },
          child: Center(
            child: Text('OK'),
          ),
        )
      ],
    );
  }
}