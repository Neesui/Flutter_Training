class Event {
  final String title;
  final String description;
  final DateTime date;
  Event({
    required this.title,
    required this.description,
    required this.date,
  });
}

List<Event> events = [
  Event(
    title: "Welcome Program",
    description: "Welcome program description",
    date: DateTime.now(),
  ),
  Event(
    title: "Farewell Program",
    description: "Farewell program description",
    date: DateTime.now(),
  ),
  Event(
    title: "Anniversary Program",
    description: "Anniversary program description",
    date: DateTime.now(),
  ),
  Event(
    title: "Anniversary Program",
    description: "Anniversary program description",
    date: DateTime.now(),
  ),
];
