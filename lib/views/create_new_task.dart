import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateNewTask extends StatelessWidget {
  CreateNewTask({Key? key}) : super(key: key);

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        elevation: 0,
        title: Text(
          'Create New Task',
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: 
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.white,
            ),
            
            padding: EdgeInsets.all(16),
            child: Form(
              key: formkey,
              child: ListView(children: [
                TextFormField(
                  controller: titleController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    labelText: 'Title',
                    hintText: 'Please enter Title',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Title is required';
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                    controller: descriptionController,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      hintText: 'Please enter description', 
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        
                      ),
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Description is required';
                      }
                    }),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          controller: dateController,
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(
                                const Duration(days: 365),
                              ),
                            ).then((selectedDate) {final DateFormat dateFormat=
                            DateFormat('dd/MM/yyyy');
                            dateController.text= dateFormat.format(selectedDate!);});
                          },
                           
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: 'Date',
                            hintText: 'Please enter date',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Date is required';
                            }
                          }),
                   ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                          controller: timeController,
                          onTap: () {
                            showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            ).then((selectedTime) {
                              timeController.text = selectedTime!.format(context);
                            });
                          },
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: 'Time',
                            hintText: 'Please enter time',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Time is required';
                            }
                          }),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                TextButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      print(titleController.text);
                      print(descriptionController.text);
                      print(dateController.text);
                      print(timeController.text);
                    } else {
                      print('failed');
                    }
                  },
                  
                  child: Text(
                    'Create',
                    style:
                        TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: TextButton.styleFrom(backgroundColor: Color(0xff1A415C)),
                )
              ]),
            ),
          
          ),
          
        
      

    );
  }
}
