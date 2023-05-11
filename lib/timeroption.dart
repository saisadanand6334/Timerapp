import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/providerclass.dart';
import 'package:provider4/utils.dart';

class Timeroption extends StatelessWidget {
  const Timeroption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Providerclass>(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: Selectabletimes.map((time) {
          return GestureDetector(
            onTap: () => provider.selecttime(double.parse(time)),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              alignment: AlignmentDirectional.center,
              height: 60,
              width: 80,
              decoration: int.parse(time) == provider.Selectedtime
                  ? BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8))
                  : BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      borderRadius: BorderRadius.circular(8)),
              child: Text(
                (int.parse(time) ~/ 60).toString(),
                style: TextStyle(
                    color: int.parse(time) == provider.Selectedtime
                        ? Colors.black
                        : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
