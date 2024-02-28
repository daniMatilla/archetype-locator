import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_mixin/get_it_mixin.dart';

final GetIt getIt = GetIt.instance;
T get<T extends Object>() => getIt.get();
bool get releaseMode => kReleaseMode;
bool get useShellRoute => false;

abstract class BaseStatelessWidget extends StatelessWidget with GetItMixin {
  BaseStatelessWidget({Key? key}) : super(key: key);
}
