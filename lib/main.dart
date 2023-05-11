import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider4/frontpage.dart';
import 'package:provider4/providerclass.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Providerclass(),
    child: MaterialApp(
      title: 'Timer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: First(),
    ),
  ));
}
