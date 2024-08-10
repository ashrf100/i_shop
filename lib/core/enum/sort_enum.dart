enum SortBy { title, price, rating }
enum Sortorder {
  asc('A To Z'),
  desc('Z To A');

  final String displayName;

  const Sortorder(this.displayName);
}
