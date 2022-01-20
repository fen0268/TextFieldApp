import 'package:flutter/material.dart';
import 'package:text_field_app/next_page.dart';

void main() => runApp(
      const MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  String paramText = 'Enter something...';

  void _userNameChanged(String value) {
    setState(() {
      paramText = '3万円払えや\n $value';
    });
  }

  void _userNameSubmitted(String value) {
    setState(() {
      paramText = 'Submitted $value';
    });
  }

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
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
              children: [
                const Text(
                  '名前入力しろやゴラ',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: 'Username',
                        icon: Icon(Icons.account_circle),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                        ))),
                    autocorrect: false,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    onChanged: _userNameChanged,
                    onSubmitted: _userNameSubmitted,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NextPage(
                                paramText: paramText,
                              )),
                    );
                  },
                  child: const Text(
                    '次へ',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
