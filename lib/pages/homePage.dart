// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:pokedex_app/utils/json_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: readJsonData(),
        builder: ((context, snapshot) {
          if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            return ListView.builder(itemBuilder: ((context, index) {
              return Card(
                child: Container(),
              );
            }));
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }

  Future<List<Data>> readJsonData() async {
    final jsondata = await rootBundle.rootBundle.loadString('assets/data.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => Data.fromJson(e)).toList();
  }
}
