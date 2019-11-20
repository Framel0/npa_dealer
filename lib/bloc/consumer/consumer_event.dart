import 'package:equatable/equatable.dart';

abstract class ConsumerEvent extends Equatable {
  ConsumerEvent([List<Object> props = const []]) : super(props);
}

class FetchConsumers extends ConsumerEvent {
  @override
  String toString() {
    return "FetchConsumers";
  }
}
