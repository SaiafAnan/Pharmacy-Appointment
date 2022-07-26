import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'userApi.dart';

class PatientList extends StatefulWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  State<PatientList> createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  User? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }

  Future<void> getApiData() async {
    String url = "https://worldhealthaid.com/api/patient/list";
    var result = await http.get(Uri.parse(url));

    print(result.body);

    user = User.fromJson(jsonDecode(result.body) as Map<String, dynamic>);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Patient List',
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            if (user != null) getList(),
          ],
        ),
      ),
    );
  }

  Widget getList() {
    return Expanded(
      child: ListView.builder(
        itemCount: user!.patients!.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            "https://worldhealthaid.com/${user?.patients?[index].image}"),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(user?.patients?[index].firstName ?? ''),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
