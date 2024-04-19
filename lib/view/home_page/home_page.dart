import 'package:student_data/utils/globals.dart';
import 'package:student_data/utils/headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...List.generate(
              Globals.StudentList.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(
                      context,
                      Routes.detail,
                      arguments: Globals.StudentList[index],
                    );
                  });
                },
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text("${Globals.StudentList[index]['name']}"),
                  subtitle: Text("${Globals.StudentList[index]['grid']}"),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        Globals.StudentList.removeAt(index);
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.adddata);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
