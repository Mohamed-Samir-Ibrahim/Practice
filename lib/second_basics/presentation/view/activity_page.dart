import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_practice/second_basics/data/activity_model.dart';
import 'package:flutter_practice/second_basics/presentation/widget/hero_widget.dart';
import 'package:http/http.dart' as http;

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool isFirst = true;

  Future<ActivityModel>? activity;

  Future<ActivityModel> fetchRandomActivity() async {
    final uri = Uri.parse('https://bored-api.appbrewery.com/random');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return ActivityModel.fromJson(data);
    } else {
      throw Exception('Failed to load activity');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Activity'),
        actions: [
          IconButton(
            onPressed: () {
              isFirst = !isFirst;
              (context as Element).reassemble();
            },
            icon: Icon(Icons.change_circle),
          ),
        ],
      ),
      body: AnimatedCrossFade(
        firstChild: FutureBuilder<ActivityModel>(
          future: fetchRandomActivity(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              final activity = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.activity,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 8),
                    Text('Type: ${activity.type}'),
                    Text('Participants: ${activity.participants}'),
                    Text('Accessibility: ${activity.accessibility}'),
                    Text('Price: ${activity.price}'),
                    Text(
                      'Kid friendly: ${activity.kidFriendly ? "Yes" : "No"}',
                    ),
                    Text('Duration: ${activity.duration}'),
                    // Optionally show link if not empty
                    if (activity.link.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Link: ${activity.link}',
                        style: const TextStyle(color: Colors.blue),
                      ),
                    ],
                  ],
                ),
              );
            } else {
              return const Center(child: Text('No activity found'));
            }
          },
        ),
        secondChild: HeroWidget(title: 'Random Activity'),
        crossFadeState: isFirst
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        duration: Duration(milliseconds: 1000),
      ),
      floatingActionButton: isFirst
          ? null
          : FloatingActionButton(
              onPressed: () {
          // force rebuild to fetch new activity
          (context as Element).reassemble();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
