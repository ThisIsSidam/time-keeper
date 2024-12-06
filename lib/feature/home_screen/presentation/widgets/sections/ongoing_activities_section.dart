import 'package:activity_tracker/feature/home_screen/data/models/ongoing_activity_model/ongoing_activity_model.dart';
import 'package:activity_tracker/feature/home_screen/presentation/providers/ongoing_activities_notifier.dart';
import 'package:activity_tracker/feature/home_screen/presentation/widgets/ongoing_activity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OngoingActivitiesSection extends ConsumerWidget {
  const OngoingActivitiesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<OngoingActivityModel> onActivities =
        ref.watch(ongoingActivitiesRepositoryProvider);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 250,
          ),
          child: onActivities.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: onActivities.length,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) => OngoingActivityTile(
                    onActivity: onActivities[index],
                  ),
                )
              : const Center(child: Text('No ongoing activities'))),
    );
  }
}
