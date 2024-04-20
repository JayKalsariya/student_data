import 'package:student_data/utils/headers.dart';

IconButton deleteButton({
  required BuildContext context,
  required int index,
  required void Function() reset,
}) {
  return IconButton(
    onPressed: () {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: const Color(0xffC5EBAA),
              title: const Text("Alert !!"),
              content: const Text(
                "Are you sure you want to delete this data?",
              ),
              actions: [
//Yes Button
                OutlinedButton(
                  onPressed: () {
                    Globals.StudentList.removeAt(index);
                    Navigator.pop(context);
                    reset();
                  },
                  child: const Text(
                    "Yes",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
//No Button
                OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    reset();
                  },
                  child: const Text(
                    "No",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            );
          });
      reset();
    },
    icon: const Icon(Icons.delete),
  );
}
