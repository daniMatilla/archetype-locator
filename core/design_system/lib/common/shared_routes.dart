// Add the app routes here...
enum SharedRoutes {
  favorite(name: 'favorite', path: null),
  favorites(name: 'favorites', path: null),
  home(name: 'home', path: null);

  const SharedRoutes({
    required this.name,
    this.path,
  });
  final String name;
  final String? path;
}
