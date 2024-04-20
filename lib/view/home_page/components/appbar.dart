import 'package:student_data/utils/headers.dart';

AppBar myAppBar({
  required void Function() reset,
  // required BuildContext context,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: const Text(
      "Home Page",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          reset();
        },
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFC5EBAA),
            // border: Border.all(),
            boxShadow: [
              const BoxShadow(
                color: Color(0xFFA5DD9B),
                blurRadius: 4,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 4,
                offset: const Offset(-3, -3),
              ),
            ],
          ),
          child: const Icon(Icons.refresh),
        ),
      ),
    ],
  );
}
