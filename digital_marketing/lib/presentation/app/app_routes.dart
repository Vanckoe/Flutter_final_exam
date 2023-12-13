enum AppRoutes {
  auth('/'),
  home('/home'),
  news('/news'),
  blog('/blog');

  final String path;

  const AppRoutes(this.path);
}
