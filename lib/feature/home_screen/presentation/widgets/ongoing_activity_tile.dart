import 'package:activity_tracker/core/extensions/datetime_ext.dart';
import 'package:activity_tracker/feature/home_screen/data/models/ongoing_activity_model/ongoing_activity_model.dart';
import 'package:activity_tracker/feature/home_screen/presentation/providers/ongoing_activities_notifier.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OngoingActivityTile extends ConsumerWidget {
  const OngoingActivityTile({required this.onActivity, super.key});

  final OngoingActivityModel onActivity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () => ref
          .read(ongoingActivitiesRepositoryProvider.notifier)
          .endActivity(onActivity),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: SizedBox(
          height: 70,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
            child: ListTile(
              leading: Icon(
                Icons.query_stats_rounded,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              ),
              title: Text(
                onActivity.activity.name,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
              subtitle: Text(
                onActivity.startedAt.hm,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                ),
              ),
              trailing: StreamBuilder(
                stream: Stream.periodic(const Duration(seconds: 1)),
                builder: (context, _) => Text(
                  DateTime.now().difference(onActivity.startedAt).pretty(
                        maxUnits: 2,
                        tersity: DurationTersity.second,
                        abbreviated: true,
                      ),
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
