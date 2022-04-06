import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rb_digital_test/core/error/failures.dart';
import 'package:rb_digital_test/core/logger/logger_impl.dart';
import 'package:rb_digital_test/features/notificatons/domain/enteties/notification_model.dart';
import 'package:rb_digital_test/features/notificatons/domain/repository/notffication_repository.dart';
part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationRepository notificationRepository;
  NotificationBloc(this.notificationRepository)
      : super(NotificationState.initial()) {
    on<NotificationEvent>(
      (event, emit) async {
        emit(
          state.copyWith(
            noInternet: false,
            isSubmitting: true,
          ),
        );
        await Future.delayed(Duration(seconds: 2));
        await event.map(
          started: (e) async {
            state.copyWith(isSubmitting: true);
            final result = await notificationRepository.getAllNotification();
            result.fold(
              (left) {
                if (left is NoInternetFailure) {
                  emit(
                    state.copyWith(
                      noInternet: true,
                      isSubmitting: false,
                    ),
                  );
                }
                if (left is ServerFailure) {
                  logger.e(left.toString());
                  emit(
                    state.copyWith(serverError: true),
                  );
                }
              },
              (right) async {
                logger.d(right);
                emit(
                  state.copyWith(notifications: right, isSubmitting: false),
                );
              },
            );
          },
        );
      },
    );
  }
}
