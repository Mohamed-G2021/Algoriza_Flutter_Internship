import 'package:flutter/material.dart';
import 'package:todo_application/presentation/shared_widgets/my_icon.dart';
import 'package:todo_application/presentation/shared_widgets/my_icon_button.dart';
import 'package:todo_application/presentation/shared_widgets/my_text.dart';
import 'package:todo_application/presentation/shared_widgets/my_text_form_field.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  List<String> repeatMenuItems = ['Never', 'Daily', 'Weekly', 'Monthly'];
  List<String> remindMenuItems = [
    '1 day before',
    '1 hour before',
    '30 min before',
    '10 min before'
  ];
  String? selectedRepeat = 'Never';
  String? selectedRemind = '30 min before';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: MyIconButton(
          icon: const MyIcon(
            icon: Icons.arrow_back_ios,
            iconColor: Colors.black,
          ),
          onClicked: () {
            Navigator.pop(context);
          },
        ),
        title: const MyText(
          writtenText: 'Add task',
          textColor: Colors.black,
          textWeight: FontWeight.bold,
          textSize: 23,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const MyText(
              writtenText: 'Title',
              textSize: 18,
              textWeight: FontWeight.w500,
            ),
            const SizedBox(height: 10),
            const MyTextFormField(),
            const SizedBox(height: 25),
            const MyText(
              writtenText: 'Date',
              textSize: 18,
              textWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextFormField(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022),
                    lastDate: DateTime(2100));
              },
            ),
            const SizedBox(height: 25),
            Row(
              children: const [
                MyText(
                  writtenText: 'Start time',
                  textSize: 18,
                  textWeight: FontWeight.w500,
                ),
                SizedBox(width: 110),
                MyText(
                  writtenText: 'End time',
                  textSize: 18,
                  textWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 165,
                    child: MyTextFormField(
                      onPressed: () {
                        showTimePicker(
                            context: context, initialTime: TimeOfDay.now());
                      },
                    )),
                SizedBox(
                    width: 165,
                    child: MyTextFormField(
                      onPressed: () {
                        showTimePicker(
                            context: context, initialTime: TimeOfDay.now());
                      },
                    )),
              ],
            ),
            const SizedBox(height: 25),
            const MyText(
              writtenText: 'Remind',
              textSize: 18,
              textWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              value: selectedRemind,
              items: remindMenuItems
                  .map((item) => DropdownMenuItem(
                      value: item, child: MyText(writtenText: item)))
                  .toList(),
              onChanged: (item) =>
                  setState(() => selectedRemind = item.toString()),
              //isExpanded: true,
            ),
            const SizedBox(height: 25),
            const MyText(
              writtenText: 'Repeat',
              textSize: 18,
              textWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              value: selectedRepeat,
              items: repeatMenuItems
                  .map((item) => DropdownMenuItem(
                      value: item, child: MyText(writtenText: item)))
                  .toList(),
              onChanged: (item) =>
                  setState(() => selectedRepeat = item.toString()),
              //isExpanded: true,
            ),
            const SizedBox(height: 25),
          ]),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: ElevatedButton(
          onPressed: () {},
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
    );
  }
}
