import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_application/presentation/add_task_screen.dart';
import 'package:todo_application/presentation/shared_widgets/my_icon.dart';
import 'package:todo_application/presentation/shared_widgets/my_icon_button.dart';
import 'package:todo_application/presentation/shared_widgets/my_text.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({Key? key}) : super(key: key);
  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  bool isDone = false;
  bool isClicked = false;
  bool isChecked = false;
  bool isFinished = false;
  bool isPressed = false;
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.white),
          backgroundColor: Colors.white,
          title: const MyText(
            writtenText: 'Board',
            textColor: Colors.black,
            textWeight: FontWeight.bold,
            textSize: 23,
          ),
          actions: [
            MyIconButton(
              icon: const MyIcon(
                icon: Icons.search,
                iconColor: Colors.black,
              ),
              onClicked: () {},
            ),
            MyIconButton(
              icon: const MyIcon(
                icon: Icons.notifications_none,
                iconColor: Colors.black,
              ),
              onClicked: () {},
            ),
            const MyIconButton(
                icon: MyIcon(
              icon: Icons.more_vert,
              iconColor: Colors.black,
            ))
          ],
          bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Completed',
                ),
                Tab(
                  text: 'Uncompleted',
                ),
                Tab(
                  text: 'Favorites',
                )
              ]),
        ),
        body: TabBarView(children: [
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.deepOrange,
                    value: isDone,
                    onChanged: (newValue) {
                      setState(() {
                        isDone = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Design team meeting'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.orange,
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Making Wireframes'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.yellow,
                    value: isClicked,
                    onChanged: (newValue) {
                      setState(() {
                        isClicked = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Create UI elements'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.blue,
                    value: isFinished,
                    onChanged: (newValue) {
                      setState(() {
                        isFinished = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Meeting with Omar Amr'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.red,
                    value: isPressed,
                    onChanged: (newValue) {
                      setState(() {
                        isPressed = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Call relatives'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.brown,
                    value: isTapped,
                    onChanged: (newValue) {
                      setState(() {
                        isTapped = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'attend Course Sessions'),
              ),
            ],
          ),
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.deepOrange,
                    value: isDone,
                    onChanged: (newValue) {
                      setState(() {
                        isDone = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Design team meeting'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.orange,
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Making Wireframes'),
              ),
            ],
          ),
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.yellow,
                    value: isClicked,
                    onChanged: (newValue) {
                      setState(() {
                        isClicked = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Create UI elements'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.blue,
                    value: isFinished,
                    onChanged: (newValue) {
                      setState(() {
                        isFinished = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Meeting with Omar Amr'),
              )
            ],
          ),
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.red,
                    value: isDone,
                    onChanged: (newValue) {
                      setState(() {
                        isDone = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'Call relatives'),
              ),
              ListTile(
                leading: Checkbox(
                    activeColor: Colors.brown,
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    }),
                title: const MyText(writtenText: 'attend Course Sessions'),
              ),
            ],
          ),
        ]),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddTaskScreen()));
            },
            style: ElevatedButton.styleFrom(
                primary: const Color(0xFF25c06d),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const MyText(
              writtenText: 'Add a task',
              textSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
