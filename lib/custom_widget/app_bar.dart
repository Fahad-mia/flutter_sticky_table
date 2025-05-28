import 'package:flutter/material.dart';
AppBar appBarData(String titleData){
  return AppBar(
    title: Text(titleData,
      style: TextStyle(
        color: Colors.lightBlue
      ),
    ),
    centerTitle: true,
  );
}