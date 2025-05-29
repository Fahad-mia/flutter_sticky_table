import 'package:flutter/material.dart';
import 'package:flutter_sticky_table/custom_widget/app_bar.dart';
import 'package:flutter_sticky_table/custom_widget/table_builder.dart';
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
    'Stock',
    'Sell_Date'
  ];
  final List<Map<String, String>> cellData = List.generate(20, (i){
    return {
      "ID" : "${i+1}",
      "Name" : "item ${i + 1}",
      "Brand" : i % 2 == 0 ? "Transtec" : "BLL",
      "Price" : "${i + 1 * 10}",
      "Category" : i % 2 == 0 ? "Transtec" : "BLL",
      "Stock" : i % 2 == 0 ? "No" : "Yes",
      "Sell_Date" : "Today"
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarData("Table Data"),
      body: TableBuilder(rowData: cellData, columnData: columnsData),
    );

  }
}
