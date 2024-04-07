import 'package:aviz/Features/Home/bloc/home_event.dart';
import 'package:aviz/Features/Home/bloc/home_state.dart';
import 'package:aviz/Features/Home/data/repository/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _homeRepository;
  HomeBloc(this._homeRepository) : super(HomeInitState()) {
    on<HomeRequestList>(
      (event, emit) async {
        emit(HomeLoadingState());
        var hotPromotionList = await _homeRepository.getHotPromotions();
        var recentPromotionList = await _homeRepository.getRecentPromotions();
        emit(
          HomeResponseState(
            hotPromotionList: hotPromotionList,
            recentPromotionList: recentPromotionList,
          ),
        );
      },
    );
  }
}
