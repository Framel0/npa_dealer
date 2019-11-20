import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:npa_dealer/repositories/consumer/consumer.dart';
import './consumer.dart';

class ConsumerBloc extends Bloc<ConsumerEvent, ConsumerState> {
  final ConsumerRepository consumerRepository;

  ConsumerBloc({@required this.consumerRepository});
  @override
  ConsumerState get initialState => ConsumerLoading();

  @override
  Stream<ConsumerState> mapEventToState(
    ConsumerEvent event,
  ) async* {
    if (event is FetchConsumers) {}
  }
}
