class FishingSpot {
  final String id;
  final String name;
  final String type; // Dam, Lake, River, Ocean
  final String description;
  final String imageUrl;
  final List<FishSpecies> species;
  final WeatherCondition currentWeather;
  final double averageDepth;
  final double rating;

  FishingSpot({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.imageUrl,
    required this.species,
    required this.currentWeather,
    required this.averageDepth,
    required this.rating,
  });
}

class FishSpecies {
  final String name;
  final String scientificName;
  final String description;
  final String bestBait;
  final String bestTime;
  final String imageUrl;

  FishSpecies({
    required this.name,
    required this.scientificName,
    required this.description,
    required this.bestBait,
    required this.bestTime,
    required this.imageUrl,
  });
}

class Bait {
  final String id;
  final String name;
  final String type; // Boilie, Spinner, Natural, etc.
  final String description;
  final String targetSpecies;
  final String howToFish; // Technique
  final String imageUrl;

  Bait({
    required this.id,
    required this.name,
    required this.type,
    required this.description,
    required this.targetSpecies,
    required this.howToFish,
    required this.imageUrl,
  });
}

class WeatherCondition {
  final double temperature;
  final double windSpeed;
  final String windDirection;
  final double pressure;
  final String moonPhase;
  final String clarity;

  WeatherCondition({
    required this.temperature,
    required this.windSpeed,
    required this.windDirection,
    required this.pressure,
    required this.moonPhase,
    required this.clarity,
  });
}

class CatchReport {
  final String id;
  final String userName;
  final String userAvatar;
  final String spotName;
  final String fishSpecies;
  final double weight;
  final String baitUsed;
  final String imageUrl;
  final DateTime timestamp;
  final String description;

  CatchReport({
    required this.id,
    required this.userName,
    required this.userAvatar,
    required this.spotName,
    required this.fishSpecies,
    required this.weight,
    required this.baitUsed,
    required this.imageUrl,
    required this.timestamp,
    required this.description,
  });
}
