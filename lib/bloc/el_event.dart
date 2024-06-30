import 'package:equatable/equatable.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class NavigateToPage extends NavigationEvent {
  final String page;

  const NavigateToPage(this.page);

  @override
  List<Object> get props => [page];
}
