import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'address_rest_api.g.dart';

@RestApi(baseUrl: 'https://www.juso.go.kr/addrlink/addrLinkApi.do')
abstract class AddressRestApi {
  factory AddressRestApi(Dio dio, {String baseUrl}) = _AddressRestApi;

  @GET('')
  Future<HttpResponse> getAdress({@Query("confmKey") String? confmKey, @Query("resultType") String? resultType, @Query("keyword") String? keyword});
}