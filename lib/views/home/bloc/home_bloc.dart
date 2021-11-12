import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required HomeState initialState}) : super(initialState) {
    add(StartEvent());
  }

  int artanSayi = 0;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is StartEvent) {
      // ignore: avoid_print
      print("StartEvent");
      await Future.delayed(
        Duration(seconds: 3),
      );
      // ignore: avoid_print
      print("HomeLoadingState");
      yield HomeLoadingState();
      await Future.delayed(
        Duration(seconds: 3),
      );
      // ignore: avoid_print
      print("HomeLoadedState: $artanSayi");
      yield HomeLoadedState(sayi: artanSayi);
    } else if (event is IncrementEvent) {
      artanSayi++;
      // ignore: avoid_print

      print("HomeLoadedState: " + artanSayi.toString());
      yield HomeLoadedState(sayi: artanSayi);
    }
  }

  void increment() {
    add(
      IncrementEvent(),
    );
  }
}

/*
      await Future.delayed(
        Duration(seconds: 3),
      );

 */


/*
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

 */