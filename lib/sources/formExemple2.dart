import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:phone_number/phone_number.dart';

class MarcForm2 extends StatefulWidget {
  const MarcForm2({Key? key}) : super(key: key);
  @override
  State<MarcForm2> createState() => _MarcForm2();
}

class _MarcForm2 extends State<MarcForm2> {
  final _formKey = GlobalKey<FormBuilderState>();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.looks_one,
                          color: Colors.blue,
                        ),
                        Text("Personal", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                        Text("Contact", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                        Text("Upload", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16), 
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16), 
          SizedBox(
          height: 200, 
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: <Widget>[
                Icon(
                  Icons.house,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Adress",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
          const SizedBox(height: 16), 
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Mobile number",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 233, 183, 179),
                ),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {    
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 170, 203, 231),
                  shadowColor: const Color.fromARGB(255, 145, 193, 233), 
                  elevation: 5, 
                ),
                child: const Text("Continue"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}