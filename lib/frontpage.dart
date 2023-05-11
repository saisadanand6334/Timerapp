import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/providerclass.dart';
import 'package:provider4/timecontroller.dart';
import 'package:provider4/timercard.dart';
import 'package:provider4/timeroption.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xcff6BECBB),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Timer",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<Providerclass>(context, listen: false).reset();
              },
              icon: Icon(
                Icons.refresh,
                size: 30,
              )),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: AlignmentDirectional.center,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Timercard(),
              SizedBox(height: 20),
              Timeroption(),
              SizedBox(
                height: 20,
              ),
              Timecontroller(),
            ],
          ),
        ),
      ),
    );
  }
}
