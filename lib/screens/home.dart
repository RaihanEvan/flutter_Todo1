import 'package:flutter/material.dart';
import 'package:flutter_todo1/constants/colors.dart';
import 'package:flutter_todo1/widgets/todo_item.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Column(
          children: [
            searchBox(),
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50,bottom: 20),
                  child: Text('All Todo Lists', style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
                ),
                ToDoItem(),
              ],
            )
    )
          ],
        ),
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
