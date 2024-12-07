import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('الصفحة الرئيسية'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // الانتقال إلى الصفحة الثانية
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AhmedAljarras()),
            );
          },
          child: Text('انتقل إلى الصفحة الثانية'),
        ),
      ),
    );
  }
}

class AhmedAljarras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('الصفحة الثانية'),
      ),
      body: const Center(
        child: Text(
          'Ahmed Aljarrash, احمد الجراش',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
