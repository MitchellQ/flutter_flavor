import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main_common.dart';
import 'resources/display_strings_app1.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: 'App 1',
    appInternalId: 1,
    stringResource: StringResourceApp1(),
    child: const MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}
