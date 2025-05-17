import 'package:app/backgroundColor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.grey),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [BackgroundColor(), const SizedBox(height: 500)],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'dw'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'dw'),
            BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'dw'),
            BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_rounded), label: 'dw')
        ],
        selectedItemColor: Colors.lightGreen,
        ),
    );
  }
}