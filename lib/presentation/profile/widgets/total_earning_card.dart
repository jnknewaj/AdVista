import 'package:advista/application/metrics/todays_metrics/todays_metrics_bloc.dart';
import 'package:advista/presentation/profile/widgets/card_flipping.dart';
import 'package:advista/presentation/profile/widgets/earning_card_back_side.dart';
import 'package:advista/presentation/profile/widgets/earning_card_front_side.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TotalEarningCard extends HookWidget {
  const TotalEarningCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isFront = useState(true);
    final isDataLoaded = useState(false);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 700),
    );
    final animation = Tween<double>(begin: 0, end: 1).animate(controller);

    void flipCard() {
      if (isFront.value) {
        controller.forward();
      } else {
        controller.reverse();
      }
      isFront.value = !isFront.value;
    }

    final theme = Theme.of(context);

    return BlocListener<TodaysMetricsBloc, TodaysMetricsState>(
      listener: (context, state) {
        state.maybeMap(
          loading: (_) {
            if (!isDataLoaded.value) {
              controller.repeat();
            }
          },
          loaded: (_) {
            if (!isDataLoaded.value) {
              isDataLoaded.value = true;
              controller.stop();
              flipCard();
            }
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<TodaysMetricsBloc, TodaysMetricsState>(
        builder: (context, state) {
          final frontChild = state.maybeMap(
            loading: (_) => CardFlipping(theme: theme),
            orElse: () => EarningCardFrontSide(theme: theme),
          );

          return GestureDetector(
            onTap: () {
              if (!isDataLoaded.value) {
                context
                    .read<TodaysMetricsBloc>()
                    .add(const TodaysMetricsEvent.requstedLifeTime());
              } else {
                flipCard();
              }
            },
            child: AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                final isFlipped = animation.value >= 0.5;
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..rotateY(animation.value * 3.1416)
                    ..setEntry(3, 2, 0.001),
                  child: isFlipped
                      ? Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()
                            ..rotateY(3.1416), // Counter-rotation
                          child: EarningCardBackSide(theme: theme),
                        )
                      : frontChild,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
