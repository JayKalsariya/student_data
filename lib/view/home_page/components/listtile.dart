import 'package:student_data/utils/headers.dart';

ListTile myListTile({
  required BuildContext context,
  required int index,
  required void Function() reset,
}) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: FileImage(Globals.StudentList[index]['image']),
    ),
    title: Text("${Globals.StudentList[index]['name']}"),
    subtitle: Text("${Globals.StudentList[index]['standard']}"),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
//Delete Button
        deleteButton(
          context: context,
          index: index,
          reset: reset,
        ),
//Edit Button
        editButton(
          context: context,
          index: index,
          reset: reset,
        )
      ],
    ),
    style: ListTileStyle.list,
  );
}
