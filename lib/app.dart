import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherApp extends ConsumerWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Weather',
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
