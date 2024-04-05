import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/NetworkUtil/api_exception.dart';
import 'package:dio/dio.dart';

abstract class IHomeDatasource {
  Future<List<Promotion>> getPromotions();
}

class HomeRemoteDatasource extends IHomeDatasource {
  final Dio _dio;
  HomeRemoteDatasource(this._dio);
  @override
  Future<List<Promotion>> getPromotions() async {
    try {
      Map<String, dynamic> promotionQuery = {'filter': 'is_hot=true'};
      var response = await _dio.get(
        'collections/promotion/records',
        queryParameters: promotionQuery,
      );
      return response.data['items']
          .map<Promotion>((jsonObject) => Promotion.fromjson(jsonObject))
          .toList();
    } on DioException catch (ex) {
      throw ApiException(
        ex.response?.statusCode,
        ex.response?.data['message'],
      );
    } catch (ex) {
      throw ApiException(0, 'unknow error');
    }
  }
}
