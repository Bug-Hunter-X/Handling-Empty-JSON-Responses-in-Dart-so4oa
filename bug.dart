```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing the first element
      final firstElement = jsonData[0]; 
      // potential error if jsonData is empty
      print(firstElement['name']); // Accessing a nested property
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```