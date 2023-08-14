import 'package:feature_a/src/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class FeatureAPage extends StatefulWidget {
  const FeatureAPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FeatureAPage> createState() => _FeatureAPageState();
}

class _FeatureAPageState extends State<FeatureAPage> {
  late final navigation = aGetIt<GoNavigation>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('feature_a : navigation : ${navigation.hashCode}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature A'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Navigate Feature B"),
          onPressed: () => navigation.navigateTo(context),
        ),
      ),
    );
  }
}
