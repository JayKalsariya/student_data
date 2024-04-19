import 'package:student_data/utils/globals.dart';
import 'package:student_data/utils/headers.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> product =
        (ModalRoute.of(context)?.settings.arguments ?? Globals.StudentList[0])
            as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('Detail Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                ),
                const SizedBox(height: 10),
                Text("${product['name']}"),
                const SizedBox(height: 10),
                Text("${product['grid']}"),
                const SizedBox(height: 10),
                Text("${product['standard']}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
