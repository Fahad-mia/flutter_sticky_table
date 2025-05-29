import 'package:flutter/material.dart';

Widget tableCellBuilder(String? textData) {
  return Container(
    padding: const EdgeInsets.all(8),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: const Color(0xFFE0F7FA),
      border: Border.all(color: Colors.grey.shade400),
    ),
    child: Text(
      textData ?? '',
      style: const TextStyle(fontSize: 14),
      textAlign: TextAlign.center,
      softWrap: true,
    ),
  );
}
