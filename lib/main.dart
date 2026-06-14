import 'package:calculator/custom_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int res = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 64, 65),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text("Calculator"),
        ),
        body: Container(
          child: Column(
            children: [
              CustomContainer(
                height: 100,
                width: double.infinity,
                text: "$res",
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ActionButton("-"),
                    ActionButton("+"),
                    ActionButton("/"),
                    ActionButton("x"),
                  ],
                ),
              ),
              SizedBox(
                height: 550,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(5),
                  semanticChildCount: 12,
                  itemCount: 12,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 10) {}
                    return CustomContainer(text: index == 11 ? "=" : "$index");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ActionButton(String text) {
    return Expanded(
      child: CustomContainer(
        text: text,
        height: 100,
        color: Colors.teal.shade900,
        textColor: Colors.cyanAccent,
      ),
    );
  }
}
