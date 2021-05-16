import 'package:flutter/material.dart';

void main() => runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZURI',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('ZURI'),
          backgroundColor: Colors.blue,
        ),
        body: SnackBarPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            backgroundColor: Colors.black87,
            content: Text('Successful!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Press To Join Zuri Training'),
      ),
    );
  }
}
