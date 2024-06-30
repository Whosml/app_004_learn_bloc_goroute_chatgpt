import 'package:flutter_bloc/flutter_bloc.dart';
import 'el_event.dart';
import 'el_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial());

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is NavigateToPage) {
      yield PageLoaded(event.page);
    }
  }
}
