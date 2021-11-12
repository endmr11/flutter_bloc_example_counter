part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class StartEvent extends HomeEvent {}

// ignore: must_be_immutable
class IncrementEvent extends HomeEvent {}
