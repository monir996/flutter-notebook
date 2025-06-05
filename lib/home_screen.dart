import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Data Table Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 49 ==> Data Table Widget ------------------

      body: Center(

        child: DataTable(
            columns: [
              DataColumn(label: Text("ID", style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(label: Text("City", style: TextStyle(fontWeight: FontWeight.bold))),
            ],

            rows: [
              DataRow(cells: [
                DataCell(Text("01")),
                DataCell(Text("Abdullah")),
                DataCell(Text("Dhaka")),
              ]),

              DataRow(cells: [
                DataCell(Text("02")),
                DataCell(Text("Monir")),
                DataCell(Text("Dhaka")),
              ]),

              DataRow(cells: [
                DataCell(Text("03")),
                DataCell(Text("Habiba")),
                DataCell(Text("Savar")),
              ]),

              DataRow(cells: [
                DataCell(Text("04")),
                DataCell(Text("Orin")),
                DataCell(Text("Gazipur")),
              ]),
            ]

        ),
      ),
    );
  }
}