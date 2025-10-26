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
      home: const BusinessCard(),
    );
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B918E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/confident-businesswoman_329181-11696.jpg?semt=ais_hybrid&w=740&q=80'),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Lucy Hazel',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(
                  width: 120,
                  child: Divider(
                    color: Colors.white70,
                    thickness: 1,
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.phone, color: Colors.teal),
                    title: const Text(
                      '+94 908 890 90',
                      style: TextStyle(color: Colors.teal, fontSize: 16),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.teal),
                    title: const Text(
                      'lucy@gmail.com',
                      style: TextStyle(color: Colors.teal, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
