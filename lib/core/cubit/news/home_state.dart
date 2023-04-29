import 'package:bloc/bloc.dart';
import 'package:cubitlesson4/models/news_model.dart';
import 'package:cubitlesson4/service/user_service.dart';
import 'package:equatable/equatable.dart';
part 'home_cubit.dart';

abstract class HomeState extends Equatable {
  HomeState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NewsInitialState extends HomeState {
  NewsInitialState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NewsLoadingState extends HomeState {
  NewsLoadingState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class NewsErrorState extends HomeState {
 final String error;
  @override
  // TODO: implement props
  List<Object?> get props => [];
  NewsErrorState(this.error);
}

class NewsComleteState extends HomeState {
  final NewsModels news;
  NewsComleteState(this.news);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
