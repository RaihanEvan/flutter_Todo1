import 'package:flutter/material.dart';
import 'package:flutter_todo1/constants/colors.dart';
import 'package:flutter_todo1/widgets/todo_item.dart';

import '../model/todo.dart';

// void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50, bottom: 20),
                          child: Text('All Todo Lists', style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w400),),
                        ),
                        for(ToDo CountTodo in todoList)
                          ToDoItem(todo: CountTodo,
                            onToDoChange: _handleToDoChange,
                            onDeleteItem: _deleteToDoItem,
                          ),
                      ],
                    )
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(
                margin: EdgeInsets.only(
                    bottom: 20, right: 20, left: 20
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const[BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                    )
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a new ToDo Item',
                    border: InputBorder.none,
                  ),
                ),
              )),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20, right: 20,
                ),
                child: ElevatedButton(
                  child: Text('+', style: TextStyle(fontSize: 40),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: tdBlue,
                      minimumSize: Size(60, 60),
                      elevation: 10
                  ),
                ),
              ),
            ],),
          )
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: tdBGColor,
        elevation: 2,
        title:
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('assets/images/evan2-compressed.jpg'),
            ),
          )
        ]));
  }

  void _handleToDoChange(ToDo toDo) {
    setState(() {
      toDo.isDone = !toDo.isDone;
    });
  }
  void _deleteToDoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 22,
          ),
          prefixIconConstraints:
          BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search Here',
          hintStyle: TextStyle(color: tdGrey),
        ),
      ),
    );
  }
}





