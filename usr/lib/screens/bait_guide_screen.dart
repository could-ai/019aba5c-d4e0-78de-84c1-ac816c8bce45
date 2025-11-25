import 'package:flutter/material.dart';
import '../models/data_models.dart';
import '../data/mock_data.dart';

class BaitGuideScreen extends StatelessWidget {
  const BaitGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Bait Guide'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: MockData.baits.length,
        itemBuilder: (context, index) {
          final bait = MockData.baits[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 2,
            child: ExpansionTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.bug_report, color: Colors.orange),
              ),
              title: Text(bait.name, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Target: ${bait.targetSpecies}'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Description:', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(bait.description),
                      const SizedBox(height: 12),
                      const Text('How to Fish (Technique):', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue.shade100),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.tips_and_updates, size: 20, color: Colors.blue),
                            const SizedBox(width: 8),
                            Expanded(child: Text(bait.howToFish)),
                          ],
                        ),
                      ),
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
}
