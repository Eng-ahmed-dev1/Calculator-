import 'package:calculator/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:particles_network/particles_network.dart';

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
        // backgroundColor: const Color.fromARGB(255, 22, 64, 65),
        body: Stack(
          children: [
            ParticleNetwork(
              hoverEffect: true,
              particleCount: 60,
              maxSpeed: 1.5,
              maxSize: 1.5,
              lineWidth: 1.0,
              lineDistance: 150,
              particleColor: Colors.white,
              lineColor: Colors.teal,
              touchColor: Colors.amber,
              touchActivation: true,
              isComplex: false,
              fill: true,
              drawNetwork: true,
              gravityType: GravityType.none,
              gravityStrength: 0.1,
              gravityDirection: const Offset(0, 1),
              gravityCenter: null,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  CustomContainer(
                    height: 150,
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
                    height: 450,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(5),
                      semanticChildCount: 12,
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 3,
                        mainAxisSpacing: 3,
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 10) {}
                        return InkWell(
                          onTap: () {
                            setState(() {
                              res = index;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.transparent,
                            text: index == 11 ? "=" : "$index",
                          ),
                        );
                      },
                    ),
                  ),
                  Row(children: [ActionButton("=", height: 80, width: 100)]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget ActionButton(String text, {double? height, double? width}) {
    return Expanded(
      child: CustomContainer(
        width: width,
        text: text,
        height: height ?? 100,
        color: const Color.fromARGB(68, 0, 77, 64),
        textColor: Colors.cyanAccent,
      ),
    );
  }
}
