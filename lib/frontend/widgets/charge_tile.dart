import 'package:energy/backend/models/charge.dart';
import 'package:energy/frontend/shared/shared_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ChargeStatusExtension on ChargeStatus {
  String get status {
    switch (this) {
      case ChargeStatus.charging:
        return 'Charging';
      case ChargeStatus.pending:
        return 'Pending';
      case ChargeStatus.completed:
        return 'Completed';
      case ChargeStatus.invalid:
        return 'Invalid';
    }
  }

  Color get backgroundColor {
    switch (this) {
      case ChargeStatus.charging:
        return AppColors.charging90;
      case ChargeStatus.pending:
        return AppColors.warning90;
      case ChargeStatus.completed:
        return AppColors.success90;
      case ChargeStatus.invalid:
        return AppColors.error90;
    }
  }

  Color get labelColor {
    switch (this) {
      case ChargeStatus.charging:
        return AppColors.charging40;
      case ChargeStatus.pending:
        return AppColors.warning40;
      case ChargeStatus.completed:
        return AppColors.success40;
      case ChargeStatus.invalid:
        return AppColors.error40;
    }
  }

  IconData get icon {
    switch (this) {
      case ChargeStatus.charging:
        return Icons.bolt;
      case ChargeStatus.pending:
        return Icons.hourglass_empty;
      case ChargeStatus.completed:
        return Icons.done;
      case ChargeStatus.invalid:
        return Icons.block;
    }
  }
}

class ChargeTile extends StatelessWidget {
  final Charge charge;

  const ChargeTile({
    Key? key,
    required this.charge,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool hasDate = charge.date != '' && charge.date.isNotEmpty;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.5,
              child: Text(
                charge.chargeId,
                style: CustomTypography.mediumLabel.copyWith(
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              charge.location,
              style: CustomTypography.mediumTitle,
            ),
            Padding(
              padding: EdgeInsets.only(top: hasDate ? 8 : 0),
              child: hasDate
                  ? Opacity(
                      opacity: 0.5,
                      child: Text(
                        charge.date,
                        style: GoogleFonts.dmSans(),
                      ),
                    )
                  : const SizedBox(),
            ),
            const SizedBox(
              height: 8,
            ),
            Chip(
              avatar: Icon(
                charge.status.icon,
                color: charge.status.labelColor,
                size: 19,
              ),
              label: Text(
                charge.status.status,
                style: CustomTypography.smallBody.copyWith(
                  color: charge.status.labelColor,
                ),
              ),
              backgroundColor: charge.status.backgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}
