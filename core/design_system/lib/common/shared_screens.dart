// Add the app routes here...
enum Screens {
  detail(name: 'detail', path: '/second_screen'),
  home(name: 'home');

  const Screens({required this.name, this.path});
  final String name;
  final String? path;
}
