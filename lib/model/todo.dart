
class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList(){
    return[
      ToDo(id: "01", todoText: 'Wake up at 6am', isDone: false),
      ToDo(id: '02', todoText: 'Use Meswak', isDone: false),
      ToDo(id: '03', todoText: 'Workout for 30min', isDone: false),
      ToDo(id: '04', todoText: 'Check emails', isDone: false),
      ToDo(id: '05', todoText: 'Search for events', isDone: true),
      ToDo(id: '06', todoText: 'breakfast with family', isDone: true),
    ];
  }
}