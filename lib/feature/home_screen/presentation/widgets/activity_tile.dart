import 'package:activity_tracker/feature/home_screen/presentation/providers/ongoing_activities_notifier.dart';
import 'package:activity_tracker/utils/logger/global_logger.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/exceptions/activity_already_running_exception.dart';
import '../../data/models/activity_model/activity_model.dart';
import '../screens/activity_screen.dart';

class ActivityTile extends ConsumerWidget {
  const ActivityTile({required this.activity, super.key});

  final ActivityModel activity;

  void _handleOnTap(BuildContext context, WidgetRef ref) {
    try {
      ref
          .read(ongoingActivitiesRepositoryProvider.notifier)
          .startActivity(activity);
    } catch (e) {
      if (e is ActivityAlreadyRunningException) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message),
          ),
        );
        gLogger.w('Could not start activity | Activty already running');
      } else {
        gLogger.e('Unknown error occurred while trying to start activity: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        _handleOnTap(context, ref);
      },
      onLongPress: () => _showActivityDialog(context),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 50,
          minWidth: 100,
          maxWidth: 250,
          maxHeight: 75,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.query_stats_rounded),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    activity.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showActivityDialog(BuildContext context) async {
    showDialog<ActivityModel>(
      context: context,
      builder: (context) => ActivityScreen(
        activity: activity,
      ),
    );
  }
}
