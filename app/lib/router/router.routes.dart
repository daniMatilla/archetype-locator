part of 'router.dart';

// Match the SharedRoutes to the screen here...
MapWidget _appRoutes = {
  SharedRoutes.detail: DetailScreen(),
  SharedRoutes.home: BlocProvider(create: (context) => getIt<SampleCubit>(), child: SampleScreen()),
};
