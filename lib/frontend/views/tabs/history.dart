import 'package:energy/backend/data/data.dart';
import 'package:energy/frontend/shared/shared_constants.dart';
import 'package:energy/frontend/widgets/charge_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: defaultSystemOverlay,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: defaultSystemOverlay,
          title: const Text('Charging History'),
          toolbarHeight: 80,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          physics: const BouncingScrollPhysics(),
          itemCount: chargeData.length,
          itemBuilder: (context, index) {
            return ChargeTile(
              charge: chargeData[index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
        ),
      ),
    );
  }
}
