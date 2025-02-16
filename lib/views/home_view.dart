import 'package:common_patterns_task/views/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Map<String, String>> data = [
    {'title': 'First Name', 'subtitle': 'Ahmed'},
    {'title': 'Last Name', 'subtitle': 'Elnahrawy'},
    {'title': 'Age', 'subtitle': '22'},
    {'title': 'Phone', 'subtitle': '01234567890'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder Pattern Task'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return CustomListTile(
            title: item['title']!,
            subtitle: item['subtitle'] ?? '',
          );
        },
      ),
    );
  }
}
