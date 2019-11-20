import 'package:equatable/equatable.dart';
import 'package:npa_dealer/model/models.dart';

abstract class ConsumerState extends Equatable {
  ConsumerState([List<Object> props = const []]) : super(props);
}

class ConsumerLoading extends ConsumerState {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return "ConsumerLoading";
  }
}

class ConsumerLoaded extends ConsumerState {
  final List<Consumer> consumers;

  ConsumerLoaded(this.consumers);
  @override
  List<Object> get props => [consumers];

  @override
  String toString() {
    return "ConsumerLoaded";
  }
}

class ConsumerError extends ConsumerState {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return "ConsumerError";
  }
}
