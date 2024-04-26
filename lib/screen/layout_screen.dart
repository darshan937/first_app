import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          // backgroundColor: Colors.grey,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.green[500]),
                  const Text('CALL'),
                ]
              ),
              Column(
                  children: [
                    Icon(Icons.near_me, color: Colors.green[500]),
                    const Text('ROUTE'),
                  ]
              ),
              Column(
                  children: [
                    Icon(Icons.share, color: Colors.green[500]),
                    const Text('SHARE'),
                  ]
              ),
            ]
          ),
        ),
      ),
    );
  }
}