import 'package:activity_tracker/feature/home_screen/presentation/providers/activities_notifier.dart';
import 'package:activity_tracker/feature/home_screen/presentation/widgets/activity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/activity_model/activity_model.dart';
import '../../screens/activity_screen.dart';

class ActivityOptionsSection extends ConsumerWidget {
  const ActivityOptionsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(activitiesRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            Expanded(child: _buildNewActivityButton(context, ref)),
          ],
        ),
        const SizedBox(height: 8),
        _buildExistingActivitiesSection(activities),
      ],
    );
  }

  Widget _buildNewActivityButton(BuildContext context, WidgetRef ref) {
    return ElevatedButton.icon(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ActivityScreen(),
        ),
      ),
      icon: Icon(
        Icons.add,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
      label: Text(
        'New Activity',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildExistingActivitiesSection(List<ActivityModel> activities) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: <Widget>[
        for (final activity in activities) ActivityTile(activity: activity)
      ],
    );
  }
}
