import 'package:flutter/material.dart';
import 'package:flutter_sticky_table/custom_widget/app_bar.dart';
class TableData extends StatefulWidget {
  const TableData({super.key});

  @override
  State<TableData> createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {
  final List<String> columnsData = [
    'ID',
    'Name',
    'Brand',
    'Price',
    'Category',
    'Seller',
    'Stock',
    'Sell_Date'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarData("Table Data"),
    );
  }
}
