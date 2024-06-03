import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  List<dynamic> empData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API-Binding"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getEmployeeData();
          },
          child: const Text("Click here!"),
        ),
      ),
    );
  }

  void getEmployeeData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(url);
    log("$response");
    log("${response.body}");
  }
}
