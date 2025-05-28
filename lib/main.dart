import 'package:flutter/material.dart';
import 'package:flutter_sticky_table/table_data.dart';
void main(){
  runApp(MaterialData());
}
class MaterialData extends StatelessWidget {
  const MaterialData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TableData(),
    );
  }
}
