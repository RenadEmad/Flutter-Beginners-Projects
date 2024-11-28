import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(initialState) : super(CounterBState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamIncrement({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAState());
    } else {
       teamBPoints += buttonNumber;
    emit(CounterBState());
    }
  }
}
