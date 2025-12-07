import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injection = GetIt.instance;
void initInjection(Dio dio, SharedPreferences preferences) {
  injection.registerSingleton<Dio>(dio);
  injection.registerSingleton<SharedPreferences>(preferences);
}
