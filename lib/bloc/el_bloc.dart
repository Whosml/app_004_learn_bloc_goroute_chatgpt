import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_event.dart';
import 'package:app_004_learn_bloc_goroute_chatgpt/bloc/el_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<NavigateToPage>((event, emit) {
      emit(PageLoaded(event.page));
    });
  }
}
