import 'package:activity_tracker/feature/completed_activities/data/models/completed_activity_model/completed_activity_model.dart';
import 'package:activity_tracker/feature/completed_activities/presentation/widgets/completed_activity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/completed_activities_notifier.dart';

class CompletedActivitiesScreen extends ConsumerWidget {
  const CompletedActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<CompletedActivityModel> activities =
        ref.watch(completedActivitiesRepositoryProvider);
    final dateController = ValueNotifier<DateTime>(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('Occurred Activities')),
      body: ValueListenableBuilder<DateTime>(
        valueListenable: dateController,
        builder: (context, currentDate, _) {
          final filteredActivities = activities
              .where((activity) =>
                  activity.startedAt.year == currentDate.year &&
                  activity.startedAt.month == currentDate.month &&
                  activity.startedAt.day == currentDate.day)
              .toList();

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: filteredActivities.length,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    final activity = filteredActivities[index];
                    return CompletedActivityTile(ocActivity: activity);
                  },
                ),
              ),
              _buildBottomRow(context, dateController),
            ],
          );
        },
      ),
    );
  }

  Row _buildBottomRow(
    BuildContext context,
    ValueNotifier<DateTime> dateController,
  ) {
    final ThemeData theme = Theme.of(context);
    return Row(
      children: [
        IconButton.filled(
          icon: Icon(
            Icons.arrow_left,
            color: theme.colorScheme.onSecondaryContainer,
          ),
          onPressed: () {
            dateController.value =
                dateController.value.subtract(const Duration(days: 1));
          },
          style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(12), right: Radius.zero),
              )),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              dateController.value = DateTime.now();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.secondaryContainer,
              shape: const BeveledRectangleBorder(),
            ),
            child: Text(
              "Today: ${DateTime.now().toLocal()}",
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ),
        IconButton.filled(
          icon: Icon(
            Icons.arrow_right,
            color: theme.colorScheme.onSecondaryContainer,
          ),
          onPressed: () {
            dateController.value =
                dateController.value.add(const Duration(days: 1));
          },
          style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.zero, right: Radius.circular(12)),
              )),
        ),
      ],
    );
  }
}
