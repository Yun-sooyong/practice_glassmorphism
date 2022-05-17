import 'package:flutter/material.dart';
import 'package:practice_glassmorphism/glassmorphism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  bool _isBlur = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Practice Glassmorphism
      backgroundColor: Colors.purple[400],

      body: Center(
        child: Stack(
          children: [
            Image.network(
              //'https://cdn.pixabay.com/photo/2022/01/07/07/13/chicago-6921297_960_720.jpg',
              'https://wallpaperaccess.com/full/5529036.png',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isBlur = !_isBlur;
                    //print(_isBlur);
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Glassmorphism(
                    blur: 15,
                    opacity: 0.2,
                    child: SizedBox(
                      height: 600,
                      //width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 150,
                                  child: const Glassmorphism(
                                    blur: 20,
                                    opacity: 0.2,
                                    child: Center(
                                        child: Text('blur: 20\nopacity: 0.2')),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 150,
                                  child: const Glassmorphism(
                                    blur: 20,
                                    opacity: 0.4,
                                    child: Center(
                                        child: Text('blur: 20\nopacity: 0.4')),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 150,
                                  child: const Glassmorphism(
                                    blur: 20,
                                    opacity: 0.6,
                                    child: Center(
                                        child: Text('blur: 20\nopacity: 0.6')),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 150,
                                  child: const Glassmorphism(
                                    blur: 30,
                                    opacity: 0.4,
                                    child: Center(
                                        child: Text('blur: 30\nopacity: 0.4')),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 150,
                                  child: const Glassmorphism(
                                    blur: 40,
                                    opacity: 0.4,
                                    child: Center(
                                        child: Text('blur: 40\nopacity: 0.4')),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 150,
                                  width: 150,
                                  child: const Glassmorphism(
                                    blur: 50,
                                    opacity: 0.4,
                                    child: Center(
                                        child: Text('blur: 50\nopacity: 0.4')),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
