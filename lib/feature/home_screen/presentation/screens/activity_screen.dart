import 'package:activity_tracker/feature/home_screen/presentation/providers/activities_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../data/models/activity_model/activity_model.dart';

class ActivityScreen extends HookConsumerWidget {
  const ActivityScreen({this.activity, super.key});

  final ActivityModel? activity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activity != null ? 'Edit Activity' : 'New Activity'),
        actions: [
          if (activity != null)
            IconButton(
              onPressed: () {
                ref
                    .read(activitiesRepositoryProvider.notifier)
                    .removeActivity(activity!.name);
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.delete),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            ReactiveFormBuilder(
              form: () => FormGroup({
                'name': FormControl<String>(
                  value: activity?.name ?? '',
                  validators: [Validators.required, Validators.minLength(3)],
                ),
                'note': FormControl<String?>(
                  value: activity?.note ?? '',
                  validators: [Validators.maxLength(200)],
                ),
              }),
              builder: (context, form, child) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReactiveTextField<String>(
                    formControlName: 'name',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      labelText: 'Name',
                      hintText: 'Enter activity name',
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Name is required',
                      ValidationMessage.minLength: (_) =>
                          'Name must be at least 3 characters',
                    },
                  ),
                  const SizedBox(height: 16),
                  ReactiveTextField<String?>(
                    formControlName: 'note',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      labelText: 'Description',
                      hintText: 'Enter activity note',
                    ),
                    validationMessages: {
                      ValidationMessage.maxLength: (_) =>
                          'Description must be less than 200 characters',
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildRowOfButtons(context, ref, form),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildRowOfButtons(BuildContext context, WidgetRef ref, FormGroup form) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.errorContainer,
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Cancel',
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.secondaryContainer,
            ),
            onPressed: () {
              if (form.valid) {
                ref.read(activitiesRepositoryProvider.notifier).createActivity(
                      form.control('name').value as String,
                      form.control('note').value as String?,
                    );
                Navigator.pop(context);
              } else {
                form.markAllAsTouched();
              }
            },
            child: Text(
              'Create',
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
