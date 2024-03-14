import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:eatvio_todo_list/src/core/utils/app_bloc_observer.dart';
import 'package:eatvio_todo_list/src/core/utils/logger.dart';
import 'package:eatvio_todo_list/src/features/app/widget/app.dart';
import 'package:eatvio_todo_list/src/features/initialization/logic/initialization_processor.dart';
import 'package:flutter/material.dart';

/// {@template app_runner}
/// A class which is responsible for initialization and running the app.
/// {@endtemplate}
final class AppRunner {
  /// {@macro app_runner}
  const AppRunner();

  /// Start the initialization and in case of success run application
  Future<void> initializeAndRun() async {
    final binding = WidgetsFlutterBinding.ensureInitialized();

    // Preserve splash screen
    binding.deferFirstFrame();

    // Override logging
    FlutterError.onError = logger.logFlutterError;
    WidgetsBinding.instance.platformDispatcher.onError =
        logger.logPlatformDispatcherError;

    // Setup bloc observer and transformer
    Bloc.observer = const AppBlocObserver();
    Bloc.transformer = bloc_concurrency.sequential();

    final initializationProcessor = InitializationProcessor();

    Future<void> initializeAndRun() async {
      try {
        final result = await initializationProcessor.initialize();
        // Attach this widget to the root of the tree.
        runApp(App(result));
      } catch (e, stackTrace) {
        logger.error('Initialization failed', error: e, stackTrace: stackTrace);
      } finally {
        // Allow rendering
        binding.allowFirstFrame();
      }
    }

    // Run the app
    await initializeAndRun();
  }
}
