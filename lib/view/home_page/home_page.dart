import 'package:student_data/utils/headers.dart';
import 'package:student_data/view/home_page/components/appbar.dart';
import 'package:student_data/view/home_page/components/fab.dart';
import 'package:student_data/view/home_page/components/listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void reset() {
      setState(() {});
    }

    return Scaffold(
      appBar: myAppBar(reset: reset),
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ...List.generate(
              Globals.StudentList.length,
              (index) => GestureDetector(
                onTap: () async {
                  await Navigator.pushNamed(
                    context,
                    Routes.detail,
                    arguments: Globals.StudentList[index],
                  );
                  setState(() {});
                },
                child: myListTile(
                  context: context,
                  index: index,
                  reset: reset,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: fab(context: context),
    );
  }
}
