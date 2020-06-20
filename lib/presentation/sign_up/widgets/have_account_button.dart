import 'package:flutter/material.dart';
import 'package:shopme/theme/style.dart';

class HaveAccountButton extends StatelessWidget {
  final Function onPressed;

  const HaveAccountButton({Key key, @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sudah punya akun?",
            textAlign: TextAlign.right,
            style: kTitle15LightStyle,
          ),
          SizedBox(
            width: 100.0,
            child: FlatButton(
              onPressed: onPressed,
              child: Text(
                "LOGIN",
                textAlign: TextAlign.right,
                style: kTitle15BoldStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
