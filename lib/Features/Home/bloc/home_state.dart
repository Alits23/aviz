import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:dartz/dartz.dart';

abstract class HomeState {}

class HomeInitState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeResponseState extends HomeState {
  Either<String, List<Promotion>> hotPromotionList;
  Either<String, List<Promotion>> recentPromotionList;
  HomeResponseState({
    required this.hotPromotionList,
    required this.recentPromotionList,
  });
}
