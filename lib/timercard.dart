import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/providerclass.dart';

class Timercard extends StatefulWidget {
  const Timercard({Key? key}) : super(key: key);

  @override
  State<Timercard> createState() => _TimercardState();
}

class _TimercardState extends State<Timercard> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Providerclass>(context);
    final seconds = provider.Currentduration % 60;
    return Column(
      children: [
        Text(
          "Focus",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 3.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Center(
                  child: Text(
                (provider.Currentduration ~/ 60).toString(),
                style: TextStyle(
                    color: Color(0xcffB383E3),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ":",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 3.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Center(
                  child: Text(
                seconds == 0
                    ? "${seconds.round()}"
                    : seconds.round().toString(),
                style: TextStyle(
                    color: Color(0xcffB383E3),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ],
    );
  }
}
