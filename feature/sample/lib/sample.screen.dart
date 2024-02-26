import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:locator/locator.dart';
import 'package:domain/movie/bo/sample.bo.dart';
import 'package:sample/cubit/sample_cubit.dart';

class SampleScreen extends BaseStatelessWidget {
  SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<SampleCubit>();
    final state = cubit.state;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: [
          if (state.sample != null)
            IconButton(
              onPressed: () => cubit.toggleFavorite(state.sample!),
              icon: Icon(
                state.sample!.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: state.sample!.isFavorite ? Colors.red : null,
              ),
            ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          state.sample != null ? _GifView(sample: state.sample!) : const Center(child: Text('Request a 🎁')),
          Column(
            children: [
              const Spacer(),
              _Buttons(cubit: cubit),
            ],
          ),
        ],
      ),
    );
  }
}

class _GifView extends StatelessWidget {
  const _GifView({required this.sample});
  final SampleBo sample;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      sample.urlGif,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress != null
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  child,
                  Center(
                    child: Text(
                      sample.answer,
                      style: const TextStyle(fontSize: 124, fontWeight: FontWeight.bold, color: Colors.white24),
                    ),
                  )
                ],
              );
      },
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({required this.cubit});
  final SampleCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      minimum: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilledButton(onPressed: () => cubit.request('yes'), child: const Text('YES')),
          FilledButton(onPressed: () => cubit.request(null), child: const Text('?')),
          FilledButton(onPressed: () => cubit.request('maybe'), child: const Text('MAYBE')),
        ],
      ),
    );
  }
}
