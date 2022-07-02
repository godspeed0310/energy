import 'package:energy/backend/models/charge.dart';

List chargeData = <Charge>[
  Charge(
    chargeId: 'TXCOO432445',
    location: 'Arihant Food Plaza Charging Station',
    status: ChargeStatus.charging,
  ),
  Charge(
    chargeId: 'TXCOO432445',
    location: 'Arihant Food Plaza Charging Station',
    status: ChargeStatus.pending,
  ),
  Charge(
    chargeId: 'TXCOO432445',
    location: 'Arihant Food Plaza Charging Station',
    status: ChargeStatus.completed,
    date: '6:00 PM, Nov 29',
  ),
  Charge(
    chargeId: 'TXCOO432445',
    location: 'Arihant Food Plaza Charging Station',
    status: ChargeStatus.invalid,
    date: '6:00 PM, Nov 29',
  ),
];
