part of 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(NewsInitialState()) {
    getNews();
  }
  NewsService newsService = NewsService();
  Future<void> getNews() async {
    emit(NewsLoadingState());
    dynamic response = await newsService.getNews();
    if (response is NewsModels) {
      emit(NewsComleteState(response));
    } else {
      emit(NewsErrorState(response));
    }
  }
}
