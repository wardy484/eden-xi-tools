import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) {
    return events.debounceTime(duration).switchMap(mapper);
  };
}
