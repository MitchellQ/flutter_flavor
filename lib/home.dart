import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app_config.dart';
import 'resources/display_strings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(config!.appDisplayName),
      ),
      body: _buildBody(config.appDisplayName, config.stringResource, config.appInternalId),
    );
  }

  Widget _buildBody(String appName, StringResource stringResource, int appInternalId) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Text(appName),
          Text(date + getDateForDisplay()),
          Text(stringResource.appDescription),
          Image.asset(
            'assets/dancing.png',
            width: 50.0,
            height: 50.0,
          ),
          Image.asset('assets/$appInternalId/icon.png', width: 50.0, height: 50.0),
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
