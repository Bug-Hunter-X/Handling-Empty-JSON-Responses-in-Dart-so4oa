```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Check for empty JSON array
      if (jsonData.isNotEmpty && jsonData[0] != null) {
        final firstElement = jsonData[0];
        print(firstElement['name']);
      } else {
        print('JSON response is empty or malformed.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```