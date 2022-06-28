import 'package:energy/frontend/shared/shared_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapTab extends StatelessWidget {
  const MapTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: defaultSystemOverlay,
      child: const Scaffold(
        body: Center(
          child: Text('Map'),
        ),
      ),
    );
  }
}
