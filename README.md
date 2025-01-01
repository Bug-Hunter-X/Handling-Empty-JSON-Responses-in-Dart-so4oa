# Handling Empty JSON Responses in Dart

This repository demonstrates a common error in Dart when handling asynchronous operations and JSON responses from APIs. The `bug.dart` file contains code that crashes if the API returns an empty JSON array.  The solution, provided in `bugSolution.dart`, shows how to handle this situation gracefully.

## Problem
The `fetchData` function in `bug.dart` does not check for an empty JSON array before accessing its elements. This leads to an error if the API returns an empty response.

## Solution
The `bugSolution.dart` file shows how to add a check to prevent the code from crashing when the response is empty.  It handles both the case where the response is null or the array is empty.