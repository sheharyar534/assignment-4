void main() {
  Map<String, Map<String, double>> countryData = {
    "Pakistan": {"population": 220892340.0, "area": 881913.0},
    "India": {"population": 1380004385.0, "area": 3287240.0},
    "United States": {"population": 331449281.0, "area": 9833520.0},
    "China": {"population": 1439323776.0, "area": 9706961.0},
    "Brazil": {"population": 212559417.0, "area": 8515767.0}
  };

  List<MapEntry<String, double>> sortedCountries = countryData.entries
      .map((entry) => MapEntry(entry.key,
          (entry.value["population"] ?? 0) / (entry.value["area"] ?? 0)))
      .toList();

  sortedCountries.sort((a, b) => b.value.compareTo(a.value));

  List<MapEntry<String, double>> top5Countries =
      sortedCountries.take(5).toList();

  print("Top 5 largest countries by population density:");
  for (var i = 0; i < top5Countries.length; i++) {
    print(
        "${i + 1}. ${top5Countries[i].key} - ${top5Countries[i].value} people per square kilometer");
  }
}
