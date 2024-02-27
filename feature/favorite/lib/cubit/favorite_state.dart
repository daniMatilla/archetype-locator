part of 'favorite_cubit.dart';

final class FavoriteState extends Equatable {
  const FavoriteState({required this.samples});
  final List<SampleBo>? samples;

  @override
  List<Object?> get props => [samples];

  FavoriteState update({
    List<SampleBo>? samples,
  }) =>
      FavoriteState(
        samples: samples ?? this.samples,
      );
}
