
import 'package:rb_digital_test/features/notificatons/data/models/api_notification_model.dart';
import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';

abstract class NotificationSourceRepo {


  ///Retruns a list of [Notification] objects if not empty
  ///
  ///Returns empty list of [Notification] type if there are no saved data
  Future<List<NotificationModel>> getNotifications();
}