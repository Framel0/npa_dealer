import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:npa_dealer/repositories/dispatch/dispatch.dart';
import './dispatch.dart';

class DispatchBloc extends Bloc<DispatchEvent, DispatchState> {
  final DispatchRepository dispatchRepository;

  DispatchBloc({@required this.dispatchRepository});
  @override
  DispatchState get initialState => DispatchLoading();

  @override
  Stream<DispatchState> mapEventToState(
    DispatchEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
