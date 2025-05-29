import 'package:flutter/material.dart';
import 'package:flutter_sticky_table/custom_widget/table_cell_builder.dart';
import 'package:flutter_sticky_table/custom_widget/table_header_builder.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';

class TableBuilder extends StatelessWidget {
  final List<Map<String, String>> rowData;
  final List<String> columnData;

  const TableBuilder({super.key, required this.rowData, required this.columnData});

  @override
  Widget build(BuildContext context) {
    return StickyHeadersTable(
      columnsLength: columnData.length,
      rowsLength: rowData.length,
      columnsTitleBuilder: (i) => buildHeader(columnData[i]),
      rowsTitleBuilder: (i) => buildHeader("Row ${i + 1}"),
      legendCell: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          border: Border.all(color: Colors.grey.shade600),
        ),
        child: const Text(
          "Info",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      contentCellBuilder: (i, j) =>
          tableCellBuilder(rowData[j][columnData[i]] ?? ""),
      cellDimensions: const CellDimensions.variableRowHeight(
          contentCellWidth: 50,
          rowHeights: [50],
          stickyLegendWidth: 40,
          stickyLegendHeight: 35)

    );
  }
}
