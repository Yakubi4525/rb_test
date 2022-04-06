import 'package:dartz/dartz.dart';
import 'package:rb_digital_test/core/error/failures.dart';
import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<NotificationModel>>> getAllNotification();
}
