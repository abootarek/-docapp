import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/app_router.dart';
import 'package:flutter_application_1/doc_app.dart';

import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
