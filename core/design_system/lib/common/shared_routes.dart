// Add the app routes here...
enum SharedRoutes {
  detail(name: 'detail', path: '/second_screen'),
  home(name: 'home');

  const SharedRoutes({required this.name, this.path});
  final String name;
  final String? path;
}
