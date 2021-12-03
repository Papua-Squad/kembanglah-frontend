import 'package:flutter/material.dart';

class HistoryPengeluaranScreen extends StatefulWidget {
  const HistoryPengeluaranScreen({Key? key}) : super(key: key);

  @override
  _HistoryPengeluaranScreenState createState() =>
      _HistoryPengeluaranScreenState();
}

class _HistoryPengeluaranScreenState extends State<HistoryPengeluaranScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00A38C),
        title: Text('History Pencairan'),
      ),
      body: CardList(),
    );
  }
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              )),
          child: ListTile(
            leading: Icon(
              Icons.call_made_outlined,
              color: Color(0xffFF0000),
            ),
            title: Text("ID PENGELUARAN"),
            subtitle: Text("17 November 2021"),
            trailing: Text(
              "- Rp500.000",
              style: TextStyle(
                color: Color(0xffFF0000),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
