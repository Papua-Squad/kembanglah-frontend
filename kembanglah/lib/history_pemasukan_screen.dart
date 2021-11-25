import 'package:flutter/material.dart';

class HistoryPemasukanScreen extends StatefulWidget {
  const HistoryPemasukanScreen({Key? key}) : super(key: key);

  @override
  _HistoryPemasukanScreenState createState() => _HistoryPemasukanScreenState();
}

class _HistoryPemasukanScreenState extends State<HistoryPemasukanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00A38C),
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
              Icons.call_received_outlined,
              color: Color(0xff00A38C),
            ),
            title: Text("ID PENGELUARAN"),
            subtitle: Text("17 November 2021"),
            trailing: Text(
              "+ Rp500.000",
              style: TextStyle(
                color: Color(0xff00A38C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
