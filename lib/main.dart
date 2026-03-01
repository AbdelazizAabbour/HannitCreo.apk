import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'core/storage/local_storage.dart';
import 'data/providers/auth_provider.dart';
import 'data/providers/services_provider.dart';
import 'data/providers/appointments_provider.dart';
import 'data/providers/messages_provider.dart';
import 'data/providers/admin_provider.dart';
import 'package:get_it/get_it.dart';

import 'core/api/dio_client.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/services_repository.dart';
import 'data/repositories/appointments_repository.dart';
import 'data/repositories/doctors_repository.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerLazySingleton<LocalStorage>(() => LocalStorage());
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepository(getIt<DioClient>()),
  );
  getIt.registerLazySingleton<ServicesRepository>(
    () => ServicesRepository(getIt<DioClient>()),
  );
  getIt.registerLazySingleton<AppointmentsRepository>(
    () => AppointmentsRepository(getIt<DioClient>()),
  );
  getIt.registerLazySingleton<DoctorsRepository>(
    () => DoctorsRepository(getIt<DioClient>()),
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Set status bar design
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  setupDependencyInjection();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ServicesProvider()),
        ChangeNotifierProvider(create: (_) => AppointmentsProvider()),
        ChangeNotifierProvider(create: (_) => MessagesProvider()),
        ChangeNotifierProvider(create: (_) => AdminProvider()),
      ],
      child: const CabinetHannitApp(),
    ),
  );
}
