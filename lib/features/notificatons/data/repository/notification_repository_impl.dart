import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rb_digital_test/core/error/exceptions.dart';
import 'package:rb_digital_test/core/error/failures.dart';
import 'package:rb_digital_test/core/network_check/network_info.dart';
import 'package:rb_digital_test/features/notificatons/data/datasources/local/notification_source.dart';
import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';
import 'package:rb_digital_test/features/notificatons/domain/repository/notffication_repository.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl extends NotificationRepository {
  final NotificationSourceRepo localRepo;
  final NetworkInfo networkInfo;
  NotificationRepositoryImpl(
      {required this.localRepo, required this.networkInfo});

  @override
  Future<Either<Failure, List<NotificationModel>>> getAllNotification() async {
    final bool hasConnection = await networkInfo.isConnected();
    if (hasConnection) {
      try {
        final notification = await localRepo.getNotifications();
        return right(notification);
      } on ServerException catch (e) {
        return left(
          ServerFailure(
            error: e.error,
            stack: e.stack,
          ),
        );
      }
    } else {
      return left(const NoInternetFailure());
    }
  }
}
