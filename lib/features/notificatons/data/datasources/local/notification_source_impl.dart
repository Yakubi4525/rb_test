import 'package:injectable/injectable.dart';
import 'package:rb_digital_test/features/notificatons/data/datasources/local/notification_source.dart';
import 'package:rb_digital_test/features/notificatons/data/models/api_notification_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';
const notificationModel = 'lib/core/json_datas/notifications.json';

@LazySingleton(as: NotificationSourceRepo)
class NotificationSourceImpl extends NotificationSourceRepo {
  Future<String> getJson({required String path}) {
    return rootBundle.loadString(path);
  }
  @override
  Future<List<NotificationModel>> getNotifications() async {
    List<NotificationModel> notificationList = [];
    var data = json.decode(await getJson(path: notificationModel));
    if (data != null) {
      for (var notification in data) {
        notificationList.add(ApiNotificationModel.fromJson(notification));
      }
      return notificationList;
    }
    throw UnimplementedError();
  }
}
