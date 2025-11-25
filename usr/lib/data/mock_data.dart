import 'package:flutter/material.dart';
import '../models/data_models.dart';

class MockData {
  static final List<FishSpecies> commonSpecies = [
    FishSpecies(
      name: 'Largemouth Bass',
      scientificName: 'Micropterus salmoides',
      description: 'Aggressive predator found in dams and rivers.',
      bestBait: 'Spinnerbaits, Plastic Worms',
      bestTime: 'Early Morning, Late Afternoon',
      imageUrl: 'https://placeholder.com/bass',
    ),
    FishSpecies(
      name: 'Common Carp',
      scientificName: 'Cyprinus carpio',
      description: 'Bottom feeder, popular for sport fishing.',
      bestBait: 'Boilies, Maize, Mielie Bomb',
      bestTime: 'Night, Overcast days',
      imageUrl: 'https://placeholder.com/carp',
    ),
    FishSpecies(
      name: 'Rainbow Trout',
      scientificName: 'Oncorhynchus mykiss',
      description: 'Cold water species, loves fast moving water.',
      bestBait: 'Flies, Small Spinners',
      bestTime: 'Dawn, Dusk',
      imageUrl: 'https://placeholder.com/trout',
    ),
  ];

  static final List<FishingSpot> spots = [
    FishingSpot(
      id: '1',
      name: 'Emerald Dam',
      type: 'Dam',
      description: 'Famous for large Carp and Bass. Features deep channels and rocky points.',
      imageUrl: 'assets/images/dam_placeholder.jpg',
      species: [commonSpecies[0], commonSpecies[1]],
      currentWeather: WeatherCondition(
        temperature: 22.5,
        windSpeed: 12.0,
        windDirection: 'NW',
        pressure: 1015,
        moonPhase: 'Waxing Gibbous',
        clarity: 'Stained',
      ),
      averageDepth: 15.0,
      rating: 4.8,
    ),
    FishingSpot(
      id: '2',
      name: 'Silver Creek River',
      type: 'River',
      description: 'Fast flowing river with excellent Trout pools.',
      imageUrl: 'assets/images/river_placeholder.jpg',
      species: [commonSpecies[2]],
      currentWeather: WeatherCondition(
        temperature: 18.0,
        windSpeed: 5.0,
        windDirection: 'E',
        pressure: 1020,
        moonPhase: 'Waxing Gibbous',
        clarity: 'Clear',
      ),
      averageDepth: 2.5,
      rating: 4.5,
    ),
    FishingSpot(
      id: '3',
      name: 'Blue Bay Coastal',
      type: 'Ocean',
      description: 'Rocky coastline perfect for saltwater game fish.',
      imageUrl: 'assets/images/ocean_placeholder.jpg',
      species: [],
      currentWeather: WeatherCondition(
        temperature: 24.0,
        windSpeed: 25.0,
        windDirection: 'SE',
        pressure: 1012,
        moonPhase: 'Waxing Gibbous',
        clarity: 'Clear',
      ),
      averageDepth: 8.0,
      rating: 4.7,
    ),
  ];

  static final List<Bait> baits = [
    Bait(
      id: '1',
      name: 'Super Sweet Corn Boilie',
      type: 'Boilie',
      description: 'High visibility yellow boilie with strong sweet corn scent.',
      targetSpecies: 'Carp',
      howToFish: 'Hair rig setup. Fish on the bottom over a bed of feed particles. Keep the line slack to avoid spooking wary fish.',
      imageUrl: 'assets/images/boilie.jpg',
    ),
    Bait(
      id: '2',
      name: 'Chartreuse Spinnerbait',
      type: 'Lure',
      description: 'Double willow blade spinnerbait for maximum flash.',
      targetSpecies: 'Bass',
      howToFish: 'Cast past structure (logs, weed beds). Retrieve at a steady pace, occasionally pausing to let it flutter down.',
      imageUrl: 'assets/images/spinner.jpg',
    ),
    Bait(
      id: '3',
      name: 'Earthworm',
      type: 'Natural',
      description: 'Classic live bait effective for almost all species.',
      targetSpecies: 'All',
      howToFish: 'Thread onto a size 8-10 hook under a float or on a light running sinker rig.',
      imageUrl: 'assets/images/worm.jpg',
    ),
  ];

  static final List<CatchReport> reports = [
    CatchReport(
      id: '1',
      userName: 'AnglerJohn',
      userAvatar: 'AJ',
      spotName: 'Emerald Dam',
      fishSpecies: 'Common Carp',
      weight: 12.5,
      baitUsed: 'Super Sweet Corn Boilie',
      imageUrl: 'assets/images/catch1.jpg',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      description: 'Caught this beauty right off the main point. Put up a massive fight!',
    ),
    CatchReport(
      id: '2',
      userName: 'BassMaster99',
      userAvatar: 'BM',
      spotName: 'Silver Creek River',
      fishSpecies: 'Rainbow Trout',
      weight: 2.1,
      baitUsed: 'Fly',
      imageUrl: 'assets/images/catch2.jpg',
      timestamp: DateTime.now().subtract(const Duration(days: 1)),
      description: 'Beautiful colors on this trout. Released safely.',
    ),
  ];
}
