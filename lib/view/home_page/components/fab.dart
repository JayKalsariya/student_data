import 'package:student_data/utils/headers.dart';

Container fab({
  required BuildContext context,
}) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      // color: Colors.black,
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.7),
          blurRadius: 3,
          offset: const Offset(-3, -3),
        ),
      ],
    ),
    child: FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.adddata);
      },
      backgroundColor: const Color(0xffA5DD9B),
      child: const Icon(Icons.add),
    ),
  );
}
