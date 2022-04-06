// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network_check/network_info.dart' as _i3;
import 'core/network_check/netwwork_info_impl.dart' as _i4;
import 'features/notificatons/data/datasources/local/notification_source.dart'
    as _i5;
import 'features/notificatons/data/datasources/local/notification_source_impl.dart'
    as _i6;
import 'features/notificatons/data/repository/notification_repository_impl.dart'
    as _i8;
import 'features/notificatons/domain/repository/notffication_repository.dart'
    as _i7;
import 'features/notificatons/ui/bloc/notification_bloc.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.NetworkInfo>(() => _i4.NetworkInfoImpl());
  gh.lazySingleton<_i5.NotificationSourceRepo>(
      () => _i6.NotificationSourceImpl());
  gh.lazySingleton<_i7.NotificationRepository>(() =>
      _i8.NotificationRepositoryImpl(
          localRepo: get<_i5.NotificationSourceRepo>(),
          networkInfo: get<_i3.NetworkInfo>()));
  gh.factory<_i9.NotificationBloc>(
      () => _i9.NotificationBloc(get<_i7.NotificationRepository>()));
  return get;
}
