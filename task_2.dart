import 'dart:math';

void main() {
  Map<String, List<double>> cityCoordinates = {
    "Islamabad": [33.7294, 73.0931],
    "Karachi": [24.8607, 67.0011],
    "Lahore": [31.5204, 74.3587],
    "Peshawar": [34.0151, 71.5805],
    "Quetta": [30.1798, 66.9750],
    "Rawalpindi": [33.5651, 72.9289],
  };

  String startCity = "Islamabad";
  String endCity = "Karachi";
  
  List<double> startCoords = cityCoordinates[startCity]!;
  List<double> endCoords = cityCoordinates[endCity]!;

  double distance = calculateDistance(
      startCoords[0], startCoords[1], endCoords[0], endCoords[1]);

  print(
      "The shortest distance between $startCity and $endCity is approximately ${distance.round()} km.");
}

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  double earthRadius = 6371.0; 
  double dLat = radians(lat2 - lat1);
  double dLon = radians(lon2 - lon1);
  double a = pow(sin(dLat / 2), 2) +
      cos(radians(lat1)) * cos(radians(lat2)) * pow(sin(dLon / 2), 2);
  double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return earthRadius * c;
}

double radians(double degrees) {
  return degrees * pi / 180;
}
