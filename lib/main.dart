import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Marc Vega Gironell - S2AM")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(decoration: const BoxDecoration(color: Colors.amber,), 
            child: const Text("One"),
          ),
          Container(decoration: const BoxDecoration(color: Colors.yellowAccent,), 
            child: const Text("Two"),
          ),
          Container(decoration: const BoxDecoration(color: Colors.greenAccent,),         
            child: const Text("Three"),
          ),
        ],
  ))));
}