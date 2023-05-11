import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/providerclass.dart';

class Timecontroller extends StatefulWidget {
  const Timecontroller({Key? key}) : super(key: key);

  @override
  State<Timecontroller> createState() => _TimecontrollerState();
}

class _TimecontrollerState extends State<Timecontroller> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Providerclass>(context);
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
      child: Center(
        child: IconButton(
          icon: provider.Timerplay
              ? Icon(Icons.pause)
              : Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
          iconSize: 70,
          onPressed: () {
            provider.Timerplay
                ? Provider.of<Providerclass>(context, listen: false).pause()
                : Provider.of<Providerclass>(context, listen: false).start();
          },
        ),
      ),
    );
  }
}
