import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'resources/display_strings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flavors Example'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          const Text(appTitle),
          Text(date + getDateForDisplay()),
          const Text(appDescription),
          Image.asset(
            'assets/dancing.png',
            width: 50.0,
            height: 50.0,
          ),
          Image.asset('assets/1.png', width: 50.0, height: 50.0),
        ],
      ),
    );
  }

  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
}
