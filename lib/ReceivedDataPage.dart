import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter_app/data.dart';

class ReceivedPage extends StatefulWidget {
  @override
  _ReceivedDataPageState createState() => _ReceivedDataPageState();
}

class _ReceivedDataPageState extends State<ReceivedPage> {
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Received Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              providerData.name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              providerData.providerValue.toString(),
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
