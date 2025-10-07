int? linearSearch(List<int> list, int searchValue) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == 42) {
      return i;
    }
  }
  return null;
}
