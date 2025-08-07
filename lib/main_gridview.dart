import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chapter6'), backgroundColor: Colors.blue),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: 100, // จำนวนไอเท็มทั้งหมด
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6, // 2 คอลัมน์
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 3 / 2, // ความกว้างเป็น 1.5 เท่าของความสูง
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.lightGreen[100 + (index % 6) * 100],
            child: Center(child: Text('Tile $index')),
          );
        },
      ),
    );
  }
}
