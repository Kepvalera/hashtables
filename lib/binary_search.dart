/// `list` must be sorted!
int? binarySearch(List<int> list, int searchValue) {
  int low = 0;
  int high = list.length - 1;
  while (low <= high) {
    final middle = (low + high) ~/ 2;
    if (searchValue == list[middle]) {
      return middle;
    } else if (searchValue < list[middle]) {
      high = middle - 1;
    } else {
      low = middle + 1;
    }
  }
  return null;
}
