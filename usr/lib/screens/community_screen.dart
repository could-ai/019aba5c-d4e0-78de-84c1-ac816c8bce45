import 'package:flutter/material.dart';
import '../models/data_models.dart';
import '../data/mock_data.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catch Feed & Reports'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_a_photo),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Report feature coming soon!')),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: MockData.reports.length,
        itemBuilder: (context, index) {
          final report = MockData.reports[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(report.userAvatar),
                  ),
                  title: Text(report.userName),
                  subtitle: Text('${report.spotName} • ${_formatDate(report.timestamp)}'),
                  trailing: const Icon(Icons.more_vert),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 64, color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.phishing, size: 20, color: Colors.blue),
                          const SizedBox(width: 8),
                          Text(
                            '${report.fishSpecies} (${report.weight}kg)',
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text('Bait: ${report.baitUsed}', style: TextStyle(color: Colors.grey[600])),
                      const SizedBox(height: 8),
                      Text(report.description),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      IconButton(icon: const Icon(Icons.thumb_up_outlined), onPressed: () {}),
                      const Text('12'),
                      IconButton(icon: const Icon(Icons.comment_outlined), onPressed: () {}),
                      const Text('4'),
                      const Spacer(),
                      IconButton(icon: const Icon(Icons.share_outlined), onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);
    if (diff.inHours < 24) {
      return '${diff.inHours}h ago';
    } else {
      return '${diff.inDays}d ago';
    }
  }
}
