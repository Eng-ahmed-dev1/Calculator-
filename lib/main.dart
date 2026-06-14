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
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text("Calculator"),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                height: 100,
                width: double.infinity,
                child: Text(
                  "$res",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
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
                    if(index == 10)
                    {
                      
                    }
                    return CustomContainer(text: index == 11 ? "-" : "$index");
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer(text: "=", width: 250, height: 100),

                    CustomContainer(text: "+", width: 100, height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
