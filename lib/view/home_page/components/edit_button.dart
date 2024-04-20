import 'package:student_data/utils/headers.dart';

IconButton editButton({
  required BuildContext context,
  required int index,
  required void Function() reset,
}) {
  return IconButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xffC5EBAA),
          title: const Text("Edit Data"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Form(
                child: Column(
                  children: [
//Name
                    TextField(
                      onChanged: (val) {
                        Globals.StudentList[index]['name'] = val;
                      },
                      decoration: const InputDecoration(
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
//GRID
                    TextField(
                      onChanged: (val) {
                        Globals.StudentList[index]['grid'] = val;
                      },
                      decoration: const InputDecoration(
                        labelText: "GRID",
                        prefixIcon: Icon(Icons.numbers_rounded),
                      ),
                    ),
//Standard
                    TextField(
                      onChanged: (val) {
                        Globals.StudentList[index]['standard'] = val;
                      },
                      decoration: const InputDecoration(
                        labelText: "standard",
                        prefixIcon: Icon(Icons.numbers_rounded),
                      ),
                    ),
                    const SizedBox(height: 50),
//Update Button
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          const BoxShadow(
                            color: Color(0xffA5DD9B),
                            blurRadius: 3,
                            offset: Offset(3, 3),
                          ),
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 3,
                            offset: const Offset(-3, -3),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          reset();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffC5EBAA),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Update',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
      reset();
    },
    icon: const Icon(Icons.edit),
  );
}
