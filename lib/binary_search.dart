int? binarySearch(List<int> list, int searchValue) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high) {
    int mid = ((low + high) / 2).floor();
    int guess = list[mid];
    if (guess == searchValue) {
      return mid;
    }
    if (guess > searchValue) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return null;
}
