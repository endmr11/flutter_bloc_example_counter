part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

// ignore: must_be_immutable
class HomeLoadedState extends HomeState {
  int sayi;
  HomeLoadedState({required this.sayi});
  @override
  List<Object> get props => [sayi];
}
