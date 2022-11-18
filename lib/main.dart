import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: SecondScreen(
      nameHolder: "YOUR NAME",
      bioHolder:
          "Creativity never goes wrong, all you need is the right direction",
      hobbyHolder: "HOBBIES",
    ))));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final name = TextEditingController();
  final phoneNumber = TextEditingController();
  final studentClass = TextEditingController();

  getItemAndNavigate(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(
                  nameHolder: name.text,
                  hobbyHolder: studentClass.text,
                  bioHolder: phoneNumber.text,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Center(
          child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(90),
          ),
          Container(
              width: 280,
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: name,
                autocorrect: true,
                decoration: const InputDecoration(hintText: 'Enter Name Here'),
              )),
          Container(
              width: 280,
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: studentClass,
                autocorrect: true,
                decoration: const InputDecoration(hintText: 'Enter Bio Here'),
              )),
          Container(
              width: 280,
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: phoneNumber,
                autocorrect: true,
                decoration:
                    const InputDecoration(hintText: 'Enter Hobbies Here'),
              )),
          ElevatedButton(
            onPressed: () => getItemAndNavigate(context),
            child: const Text('Save Edits'),
          ),
        ],
      )),
    ));
  }
}

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String nameHolder = "";
  String hobbyHolder = "";
  String bioHolder = "";

  SecondScreen(
      {Key? key,
      required this.nameHolder,
      required this.hobbyHolder,
      required this.bioHolder})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second Activity Screen"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
              ),
              Center(
                  child: Text(
                'Name = $nameHolder',
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              const Padding(
                padding: EdgeInsets.all(20),
              ),
              Center(
                  child: Text(
                'Bio = $bioHolder',
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              const Padding(
                padding: EdgeInsets.all(20),
              ),
              Center(
                  child: Text(
                'Hobbies = $hobbyHolder',
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              )),
              const Padding(
                padding: EdgeInsets.all(20),
              ),
              ElevatedButton(
                onPressed: () => goBack(context),
                child: const Text('Edit Details'),
              )
            ]));
  }
}
