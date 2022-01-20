import 'package:flutter/material.dart';
import 'package:text_field_app/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

final myController = TextEditingController();
final _text = '';
late String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: false,
        //leading: const Icon(Icons.not_started),
        title: const Text(
          "しばくぞ",
          style: TextStyle(fontSize: 25),
        ),
        /*actions: [
          SizedBox(
            width: 44,
            child: TextButton(
              onPressed: () {
                //
              },
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 44,
            child: TextButton(
              onPressed: () {
                //
              },
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ),
        ],*/

      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '名前入力しろやゴラ',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 300,
                height: 40,
                child: TextField(

                  decoration: InputDecoration(
                      hintText: 'NAME',

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      ))),

                ),
              ),
              const SizedBox(
                height: 20,
              ),


              TextButton(onPressed: () {


                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextPage(paramText: '',

                  )),
                );
              }, child: const Text('次へ',
              style: TextStyle(
                fontSize: 25
              ),),

              )
            ]),
      ),
    );
  }
}
