import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter_app/ReceivedDataPage.dart';
import 'package:provider_flutter_app/data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Data(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int value = 0;

  Increment() {
    setState(() {
      value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<Data>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider (State Management)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40.0),
            Text(
              "State Changing",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              value.toString(),
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            RaisedButton(
              onPressed: () {
                Increment();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 100.0),
            Text(
              "Provider",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Text(
              providerdata.providerValue.toString(),
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            RaisedButton(
              onPressed: () {
                providerdata.ProviderValueIncrement();
              },
              child: Icon(Icons.add),
            ),
            RaisedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => ReceivedPage());
                Navigator.push(context, route);
              },
              child: Text('goto received data page'),
            ),
          ],
        ),
      ),
    );
  }
}
