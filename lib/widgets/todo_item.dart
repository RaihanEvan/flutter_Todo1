import 'package:flutter/material.dart';
import 'package:flutter_todo1/constants/colors.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget{
  final ToDo todo;
  final onToDoChange;
  final onDeleteItem;

  const ToDoItem({
    Key? key, required this.todo,required this.onToDoChange,required this.onDeleteItem
  }) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 18),
        child: ListTile(
      onTap: (){
        // print('clicked on todo');
        onToDoChange(todo);
        },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      tileColor: Colors.deepOrangeAccent,
      leading: Icon(
        todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
        color: tdBlue,
      ),
      title: Text(
        todo.todoText!,
        style: TextStyle(
            fontSize: 15,
            color: tdBlack,
            decoration: todo.isDone? TextDecoration.lineThrough : null),),
      trailing: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: IconButton(
          onPressed: (){
            // print('clicked on delete');
            onDeleteItem(todo.id);
            },
          icon: Icon(Icons.delete),
          color: Colors.red,
          iconSize: 16,
        ),
      ),
    ));
  }
}