import 'package:equatable/equatable.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class NavigationInitial extends NavigationState {}

class PageLoaded extends NavigationState {
  final String page;

  const PageLoaded(this.page);

  @override
  List<Object> get props => [page];
}
