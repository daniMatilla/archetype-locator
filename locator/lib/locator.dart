import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
T get<T extends Object>() => getIt.get();
