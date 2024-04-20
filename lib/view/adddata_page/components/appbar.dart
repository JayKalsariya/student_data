import 'package:student_data/utils/headers.dart';

AppBar myAppBar2({
  required void Function() reset,
  required BuildContext context,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
        reset();
      },
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    ),
    title: const Text('Add Data Page'),
    centerTitle: true,
  );
}
