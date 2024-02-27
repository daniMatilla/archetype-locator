import 'package:animate_do/animate_do.dart';
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

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: state.samples != null ? _CustomMasonry(samples: state.samples!) : const Text('🥺 Without favorites...'),
      ),
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FadeIn(
                child: Image.network(
                  sample.urlGif,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    return loadingProgress != null ? const Center(child: CircularProgressIndicator()) : child;
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
