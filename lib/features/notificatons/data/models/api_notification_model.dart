import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';

class ApiNotificationModel extends NotificationModel {
  ApiNotificationModel({
    required final String id,
    required final String type,
    required final String time,
    required final String categoryAdded,
    required final String oriderNumber,
    required final String statusFrom,
    required final String statusTo,
  }) : super(
          id: id,
          type: type,
          time: time,
          categoryAdded: categoryAdded,
          oriderNumber: oriderNumber,
          statusFrom: statusFrom,
          statusTo: statusTo,
        );
  factory ApiNotificationModel.fromJson(dynamic data) {
    return ApiNotificationModel(
      id: data['id'],
      type: data['type'],
      time: data['time'],
      categoryAdded: data['category_added'],
      oriderNumber: data['orider_number'],
      statusFrom: data['status_from'],
      statusTo: data['status_to'],
    );
  }
}
