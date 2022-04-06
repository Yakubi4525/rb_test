import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:rb_digital_test/core/logger/logger_impl.dart';

import 'network_info.dart';

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl extends NetworkInfo {
  @override
  Future<bool> isConnected() async {
    try {
      logger.i("CHECKING INTERNET");
      final result = await InternetAddress.lookup('example.com');
      logger.d(result);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
      return false;
    } on SocketException catch (_) {
      return false;
    }
  }
}