import 'package:flutter/material.dart';
class NextPage extends StatelessWidget {


  final String paramText;

  const NextPage({Key? key, required this.paramText}) : super(key: key);


  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(paramText,
            style: const TextStyle(
              fontSize: 40
            ),)
          ],
        ),
      ),
    );
  }
}
