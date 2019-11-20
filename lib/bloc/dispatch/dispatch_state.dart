import 'package:equatable/equatable.dart';
import 'package:npa_dealer/model/models.dart';

abstract class DispatchState extends Equatable {
  DispatchState([List<Object> props = const []]) : super(props);
}

class DispatchLoading extends DispatchState {
  @override
  List<Object> get props => [];

  @override
  String toString() {
    return "DispatchLoading";
  }
}

class DispatchLoaded extends DispatchState {
  final List<Dispatch> dispatches;

  DispatchLoaded(this.dispatches);
  @override
  List<Object> get props => [dispatches];

  @override
  String toString() {
    return "DispatchLoading";
  }
}

class DispatchError extends DispatchState {
  final String error;

  DispatchError(this.error);
  @override
  List<Object> get props => [error];

  @override
  String toString() {
    return "DispatchError";
  }
}
