part of 'router.dart';

// Match the SharedRoutes to the screen here...
MapWidget _appRoutes = {
  SharedRoutes.detail: BlocProvider(
    create: (context) => getIt<FavoriteCubit>(),
    child: FavoriteScreen(),
  ),
  ..._bottomBarOptions
};

// Is there a bottom bar? Add the SharedRoutes in the order they appear and match them to the screen here...
MapWidget _bottomBarOptions = {
  SharedRoutes.home: BlocProvider(
    create: (context) => getIt<SampleCubit>(),
    child: SampleScreen(),
  ),
  SharedRoutes.favorites: BlocProvider(
    create: (context) => getIt<FavoriteCubit>()..getLocalSamples(),
    child: FavoritesScreen(),
  ),
};
