import 'package:agenda_de_contatos/screens/home/home.dart';
import 'package:agenda_de_contatos/sytle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: redTheme),
          dividerTheme: DividerThemeData(color: grayDividerTheme, thickness: 1),
          primarySwatch: blueTheme),
    ),
  );
}
