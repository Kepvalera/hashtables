class HashTable<K, V> {
  final int size;
  final List<List<MapEntry<K, V>>> _buckets;

  HashTable(this.size) : _buckets = List.generate(size, (_) => []);

  int _hash(K key) => key.hashCode % size;

  void add(K key, V value) {
    final index = _hash(key);
    final bucket = _buckets[index];

    for (int i = 0; i < bucket.length; i++) {
      if (bucket[i].key == key) {
        bucket[i] = MapEntry(key, value);
        return;
      }
    }

    bucket.add(MapEntry(key, value));
  }

  V? get(K key) {
    final index = _hash(key);
    final bucket = _buckets[index];
    for (var entry in bucket) {
      if (entry.key == key) return entry.value;
    }
    return null;
  }

  void remove(K key) {
    final index = _hash(key);
    final bucket = _buckets[index];
    bucket.removeWhere((entry) => entry.key == key);
  }
}
