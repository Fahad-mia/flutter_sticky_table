import 'package:flutter/material.dart';

Widget buildHeader(String textData) {
  return Container(
    padding: const EdgeInsets.all(8),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.grey.shade300, // grey background for headers
      border: Border.all(
        color: Colors.grey.shade600,
        width: 1,
      ),
    ),
    child: Text(
      textData,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
