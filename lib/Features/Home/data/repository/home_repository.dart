import 'package:aviz/Features/Home/data/datasource/home_datasource.dart';
import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/NetworkUtil/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract class IHomeRepository {
  Future<Either<String, List<Promotion>>> getPromotions();
}

class HomeRepository extends IHomeRepository {
  final IHomeDatasource _datasource;
  HomeRepository(this._datasource);
  @override
  Future<Either<String, List<Promotion>>> getPromotions() async {
    try {
      var response = await _datasource.getPromotions();
      return right(response);
    } on ApiException catch (ex) {
      return left(ex.message ?? 'خطای ناشناخته');
    }
  }
}
