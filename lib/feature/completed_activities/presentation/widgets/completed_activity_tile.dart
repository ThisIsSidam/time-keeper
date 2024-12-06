import 'package:activity_tracker/core/extensions/datetime_ext.dart';
import 'package:duration/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/completed_activity_model/completed_activity_model.dart';

class CompletedActivityTile extends ConsumerWidget {
  const CompletedActivityTile({required this.ocActivity, super.key});

  final CompletedActivityModel ocActivity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    return Padding(
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
              color: theme.colorScheme.onSecondaryContainer,
            ),
            title: Text(
              ocActivity.activity.name,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            subtitle: Text(
              '${ocActivity.startedAt.hm} - ${ocActivity.endedAt.hm}',
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            trailing: StreamBuilder(
              stream: Stream.periodic(const Duration(seconds: 1)),
              builder: (context, _) => Text(
                ocActivity.endedAt.difference(ocActivity.startedAt).pretty(
                      maxUnits: 2,
                      tersity: DurationTersity.minute,
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
    );
  }
}
