part of 'router.dart';

// Match the SharedRoutes to the screen here...
MapWidget _appRoutes = {
  SharedRoutes.detail: BlocProvider(
    create: (context) => getIt<FavoriteCubit>(),
    child: FavoriteScreen(),
  ),
  SharedRoutes.favorites: BlocProvider(
    create: (context) => getIt<FavoriteCubit>()..getLocalSamples(),
    child: FavoritesScreen(),
  ),
  SharedRoutes.home: BlocProvider(
    create: (context) => getIt<SampleCubit>(),
    child: SampleScreen(),
  ),
};
