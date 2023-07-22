import 'package:flutter/material.dart';
import 'package:flutter_todo1/constants/colors.dart';
void main() => runApp(
    MaterialApp(home: Home()));

class Home extends StatelessWidget{
  const Home({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        child: Text('Home Screen'),
      ),
    );
  }
  AppBar _buildAppBar(){
    return AppBar(
  backgroundColor: tdBGColor,
  elevation: 22,
  title: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
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
  ])
    );
  }
}