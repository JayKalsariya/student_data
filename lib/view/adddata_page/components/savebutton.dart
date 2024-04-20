import 'package:student_data/utils/headers.dart';

Container saveButton({
  required BuildContext context,
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
        if (Globals.formKey.currentState!.validate()) {
          Globals.formKey.currentState!.save();
          Globals.StudentList.add({
            "name": Globals.name,
            "grid": Globals.grid,
            "standard": Globals.standard,
            "image": Globals.image,
          });
        }
        ScaffoldMessenger.of(context).showSnackBar(
          mySnackBar(
            content: Globals.formKey.currentState!.validate()
                ? "Form saved"
                : "Failed to validate the form",
            color: Globals.formKey.currentState!.validate()
                ? Colors.green
                : Colors.red,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffC5EBAA),
        foregroundColor: Colors.black,
      ),
      child: const Text(
        'Save',
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
