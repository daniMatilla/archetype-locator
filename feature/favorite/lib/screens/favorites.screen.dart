import 'package:domain/movie/bo/sample.bo.dart';
import 'package:favorite/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:locator/locator.dart';

class FavoritesScreen extends BaseStatelessWidget {
  FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FavoriteCubit>();
    final state = cubit.state;

    return Center(
      child: state.samples != null ? _CustomMasonry(samples: state.samples!) : const Text('🥺 Without favorites...'),
    );
  }
}

class _CustomMasonry extends StatelessWidget {
  const _CustomMasonry({required this.samples});
  final List<SampleBo> samples;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemCount: samples.length,
      itemBuilder: (context, index) {
        final sample = samples[index];
        return GestureDetector(
          onTap: () {},
          child: AspectRatio(
            aspectRatio: ((index % 3 + 1) > 1.7) ? 9 / 16 : 9 / 9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  sample.answer,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white24),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
