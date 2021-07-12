import 'package:address_app/api/address_rest_api.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  String confmKey = "devU01TX0FVVEgyMDIxMDcxMDExMjQwNjExMTM5NzU=";
  String resultType = "json";
  String keyword = "영등포";

  Map<String, dynamic> addressInfo = {};

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // 주소검색 함수
  void searchAddress() async {
    Dio dio = Dio();
    AddressRestApi api = AddressRestApi(dio);

    final res = await api.getAdress(
      confmKey: "$confmKey",
      resultType: "$resultType",
      keyword: "$keyword",
    );

    addressInfo = res.data;
    print(addressInfo);

    //GetPlatform.isAndroid ? print('a'):print('b');
  }

}