import 'package:flutter/material.dart';

class Agreement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            Container(
              width: 90.0,
              child: Text(
                "Agree to terms and conditions",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 2.0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.done,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 50.0,
              child: Text(
                "Agree",
                textAlign: TextAlign.left,
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(
                Icons.clear,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 70.0,
              child: Text(
                "Disagree",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.forward, color: Colors.black),
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 90.0,
              child: Text(
                "Not now",
                textAlign: TextAlign.left,
              ),
            ),
          ],
        );
      },
    );
  }
}
