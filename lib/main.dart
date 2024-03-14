import 'dart:async';

import 'package:eatvio_todo_list/src/core/utils/logger.dart';
import 'package:eatvio_todo_list/src/features/app/logic/app_runner.dart';



void main() {
  logger.runLogging(
        () => runZonedGuarded(
          () => const AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
