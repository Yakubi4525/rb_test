part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required final bool isSubmitting,
    required final bool noInternet,
    required final bool serverError,
    required final List<NotificationModel> notifications,
  }) = _NotificationState;
  factory NotificationState.initial() => const NotificationState(
        isSubmitting: false,
        notifications: [],
        serverError: false,
        noInternet: false,
      );
}
