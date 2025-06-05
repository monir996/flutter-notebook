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
      appBar: AppBar(title: Text("Table Widget", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 48 ==> Table Widget ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Text(
                "Table Widget in Flutter",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    decoration: TextDecoration.underline
                )
            ),

            SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.all(16.0),

              child: Table(
                border: TableBorder.all(width: 1, color: Colors.blue),
                columnWidths: {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(1),
                },
                children: [

                  // ----------------------- 1st Row ------------------
                  TableRow(
                    children: [
                      // TableCell(child: Text("ID", style: TextStyle(fontWeight: FontWeight.bold))),
                      // TableCell(child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold))),
                      // TableCell(child: Text("Class", style: TextStyle(fontWeight: FontWeight.bold))),

                      _buildCell("ID", TextStyle(fontWeight: FontWeight.bold), Alignment.center),
                      _buildCell("Name", TextStyle(fontWeight: FontWeight.bold), Alignment.center),
                      _buildCell("Class", TextStyle(fontWeight: FontWeight.bold), Alignment.center)
                    ]
                  ),

                  // ----------------------- 2nd Row ------------------
                  TableRow(
                      children: [
                        _buildCell("01"),
                        _buildCell("Abdullah"),
                        _buildCell("10")
                      ]
                  ),

                  // ----------------------- 3rd Row ------------------
                  TableRow(
                      children: [
                        _buildCell("02"),
                        _buildCell("Abdur Rahman"),
                        _buildCell("8")
                      ]
                  ),

                  // ----------------------- 4th Row ------------------
                  TableRow(
                      children: [
                        _buildCell("03"),
                        _buildCell("Jannat"),
                        _buildCell("7")
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ----------------------- Customize Table Cell ------------------
  Widget _buildCell(String text, [TextStyle? textStyle, Alignment alignment = Alignment.centerLeft]) {
    return Container(
      alignment: alignment,
      padding: EdgeInsets.all(12.0),
      child: Text(text, style: textStyle),
    );
  }

}