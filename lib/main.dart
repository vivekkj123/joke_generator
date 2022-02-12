import 'package:flutter/material.dart';
import 'package:joker/apis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
    );
  }
}

class PageHome extends StatefulWidget {
  PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  TextEditingController firstname = TextEditingController();

  TextEditingController lastName = TextEditingController();
  var resultText = "Enter firstname and lastname";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 50, 5, 50),
                child: Text(
                  "JOKE GENERATOR",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.purple,
                  ),
                ),
              ),
              TextFormField(
                controller: firstname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "First Name"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: lastName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Last Name"),
              ),
              ElevatedButton(
                  onPressed: () async {
                    final _firstName = firstname.text;
                    final _lastName = lastName.text;
                    final _result = await getJokes(
                        firstname: _firstName, lastname: _lastName);

                    print(_result.value?.joke);
                    setState(() {
                      resultText = _result.value?.joke ?? "No Joke Found :()";
                    });
                  },
                  child: Text(
                    "Crack a Joke",
                  )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  resultText,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
