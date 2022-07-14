import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main_common.dart';
import 'resources/display_strings_app2.dart';

void main() {
  var configuredApp = AppConfig(
    appDisplayName: 'App 2',
    appInternalId: 2,
    stringResource: StringResourceApp2(),
    child: const MyApp(),
  );

  mainCommon();

  runApp(configuredApp);
}
