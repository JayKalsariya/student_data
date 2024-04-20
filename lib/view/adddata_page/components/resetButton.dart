import 'package:student_data/utils/headers.dart';

Container resetButton({
  required void Function() reset,
}) {
  return Container(
    height: 50,
    width: 130,
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
        Globals.globals.reset();
        Globals.formKey.currentState!.reset();
        reset();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffC5EBAA),
        foregroundColor: Colors.black,
      ),
      child: const Text(
        'Reset',
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
