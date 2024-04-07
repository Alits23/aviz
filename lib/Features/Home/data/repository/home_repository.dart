import 'package:aviz/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/NetworkUtil/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<String, List<Promotion>>> getHotPromotions();
  Future<Either<String, List<Promotion>>> getRecentPromotions();
}

class HomeRepository extends IHomeRepository {
  final IHomeDatasource _datasource;
  HomeRepository(this._datasource);
  @override
  Future<Either<String, List<Promotion>>> getHotPromotions() async {
    try {
      var response = await _datasource.getHotPromotions();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطای ناشناخته');
    }
  }

  @override
  Future<Either<String, List<Promotion>>> getRecentPromotions() async {
    try {
      var response = await _datasource.getRecentPromotions();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطای ناشناخته');
    }
  }
}
