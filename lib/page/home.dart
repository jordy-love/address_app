import 'package:address_app/controller/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressController());
    return Container(
      child: TextButton(
        child: Text("텍스트"),
        onPressed: () {
          controller.searchAddress();
        },
      ),
    );
  }
}
