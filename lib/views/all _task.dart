import 'package:flutter/material.dart';

import 'create_new_task.dart';

class AllTask extends StatelessWidget {
  const AllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hello',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Alexander !',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('You have 4 new task',
                      style: TextStyle(color: Colors.white70, fontSize: 12)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color(0xff1A6661),
                    ),
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Today's To Do",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        ListTile(
                          leading: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.arrow_right),
                          ),
                          title: Text(
                            'Doing laundry',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Today 7:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_horiz)),
                        ),
                        ListTile(
                          title: Text(
                            'Grocery Shopping',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Today 11:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Pick Cathy up from the airport',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Today 16:00pm',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Finish design project',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Today 19:00pm',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color(0xff1A6661),
                    ),
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Tomorrow's To Do",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Quiet Time',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Tomorrow 6:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_horiz)),
                        ),
                        ListTile(
                          title: Text(
                            'Dev Summit',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Tomorrow 11:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Continue Javascript course',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            'Tomorrow 19:00pm',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color(0xff1A6661),
                    ),
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Next Week's To Do",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Doing laundry',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            '21/01/2022 7:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_horiz)),
                        ),
                        ListTile(
                          title: Text(
                            'Go to the Bank',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            '23/01/2022 10:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Attend Naming Ceremony',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            '25/01/2022 7:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Color(0xff1A6661),
                    ),
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Later To Do',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Make room reservation',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            '01/04/2022 10:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_horiz)),
                        ),
                        ListTile(
                          title: Text(
                            'Book a flight ticket',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          subtitle: Text(
                            '01/04/2022 11:00am',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xff1A415C)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CreateNewTask();
                    }));
                  },
                  child: Text(
                    'Add New Task',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
