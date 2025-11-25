import 'package:flutter/material.dart';
import '../models/data_models.dart';

class SpotDetailsScreen extends StatelessWidget {
  final FishingSpot spot;

  const SpotDetailsScreen({super.key, required this.spot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(spot.name),
              background: Container(
                color: Colors.blue[800],
                child: const Center(
                  child: Icon(Icons.landscape, size: 80, color: Colors.white54),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Chip(label: Text(spot.type)),
                      const SizedBox(width: 8),
                      Chip(
                        avatar: const Icon(Icons.star, size: 16, color: Colors.amber),
                        label: Text(spot.rating.toString()),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(spot.description),
                  const SizedBox(height: 24),
                  
                  // Weather Section
                  const Text(
                    'Current Conditions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Card(
                    color: Colors.blue[50],
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildWeatherInfo(Icons.thermostat, '${spot.currentWeather.temperature}°C', 'Temp'),
                              _buildWeatherInfo(Icons.air, '${spot.currentWeather.windSpeed} km/h', 'Wind'),
                              _buildWeatherInfo(Icons.water, spot.currentWeather.clarity, 'Clarity'),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              _buildWeatherInfo(Icons.speed, '${spot.currentWeather.pressure} hPa', 'Pressure'),
                              _buildWeatherInfo(Icons.nightlight_round, spot.currentWeather.moonPhase, 'Moon'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  const Text(
                    'Fish Location Heat-Map',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.map, size: 40, color: Colors.redAccent),
                          Text('Heat Map Visualization'),
                          Text('(Depth, Structure, Activity)', style: TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    'Target Species',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ...spot.species.map((fish) => Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: const CircleAvatar(child: Icon(Icons.phishing)),
                      title: Text(fish.name),
                      subtitle: Text('Best Bait: ${fish.bestBait}'),
                      trailing: const Icon(Icons.info_outline),
                      onTap: () {
                        _showFishDetails(context, fish);
                      },
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherInfo(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue[700]),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  void _showFishDetails(BuildContext context, FishSpecies fish) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(fish.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(fish.scientificName, style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.grey)),
            const SizedBox(height: 16),
            Text(fish.description),
            const SizedBox(height: 16),
            const Text('Tips:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('• Best Time: ${fish.bestTime}'),
            Text('• Best Bait: ${fish.bestBait}'),
          ],
        ),
      ),
    );
  }
}
