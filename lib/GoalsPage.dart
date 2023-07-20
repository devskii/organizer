import 'package:flutter/material.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key, required this.roles});

  final List<String> roles;

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goals for the upcoming week'),
      ),
      body: ListView.builder(
        itemCount: widget.roles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.roles[index]),
          );
        },
      ),
    );
  }
}
