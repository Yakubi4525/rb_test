import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rb_digital_test/features/notificatons/ui/bloc/notification_bloc.dart';

import '../../injection.dart';

var blocProviders = [
  BlocProvider(
    create: (context) => getIt<NotificationBloc>()..add(const NotificationEvent.started()),
  ),
];
