import 'package:flutter/material.dart';
import 'package:shopme/theme/style.dart';

class NoAccountButton extends StatelessWidget {
  final Function onPressed;

  const NoAccountButton({Key key, @required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Belum punya akun?",
            textAlign: TextAlign.right,
            style: kTitle15LightStyle,
          ),
          SizedBox(
            width: 170.0,
            child: FlatButton(
              onPressed: onPressed,
              child: Text(
                "DAFTAR SEKARANG",
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
