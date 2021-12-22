import 'package:flutter/material.dart';
import 'package:task_manager/views/all _task.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          color: Colors.black
        ),
        child: 
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50),
              child: Icon(
                Icons.emoji_emotions,
                color: Colors.yellow,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Text(
                'Manage your task very easily!',
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Center(
                  child: Image.network('https://media.istockphoto.com/photos/check-off-completed-tasks-on-a-todo-list-picture-id1011182136?b=1&k=20&m=1011182136&s=170667a&w=0&h=RziXkHmGh9RrumkJEJEdnyDGTdcwpIycU87snPeubpU=',
                  ),
                ),
                
              ),
              
            SizedBox(
              height: 100
                          ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: BottomAppBar(
                  elevation: 2,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return AllTask();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Next',
                            style: TextStyle(
                                color: Color(0xff2411FF), fontSize: 12),
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      )),
                ),
              ),
            ]),
          ]),
        
        
         
        
      ),
      
    );
  }
}
