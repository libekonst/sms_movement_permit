import 'package:sms_movement_permit/messaging/messaging_strategy.dart';
import 'package:sms_movement_permit/movement/movement_reason.dart';

abstract class MovementMessage {
  final MovementReason reason;
  final DateTime dateTimeSent;
  final String receiver;
  final String name;
  final String address;

  MovementMessage(
      {this.reason, this.dateTimeSent, this.receiver, this.name, this.address});

  // TODO top level fn?
  String get messagePrefixFromReason {
    switch (reason) {
      case MovementReason.health:
        return '1';
      case MovementReason.groceries:
        return '2';
      case MovementReason.serviceOrBank:
        return '3';
      case MovementReason.aidAnother:
        return '4';
      case MovementReason.ceremony:
        return '5';
      case MovementReason.exerciseOrPet:
        return '6';
      default:
        return '';
    }
  }
}

class HealthMovement extends MovementMessage {
  final address;
  final DateTime dateTimeSent;
  final String name;
  final MessagingStrategy messageStrategy;

  HealthMovement(
      {this.dateTimeSent, this.name, this.address, this.messageStrategy});

  get messageBody => '${super.messagePrefixFromReason} $name $address';

  void send() => messageStrategy.send('111', messageBody);
}
