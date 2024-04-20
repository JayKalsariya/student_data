import 'package:student_data/utils/headers.dart';

Form myForm({
  required void Function() reset,
  required BuildContext context,
}) {
  return Form(
    key: Globals.formKey,
    child: Column(
      children: [
        TextFormField(
          onSaved: (val) {
            Globals.name = val;
          },
          validator: (val) => val!.isEmpty ? '* Must Be Enter Name' : null,
          onFieldSubmitted: (val) {
            Globals.formKey.currentState!.validate();
          },
          initialValue: Globals.name,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          cursorColor: const Color(0xffC5EBAA),
          decoration: InputDecoration(
            labelText: 'Name',
            focusColor: const Color(0xffC5EBAA),
            hintText: 'Enter your full name',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: const Icon(Icons.person),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xffC5EBAA),
                width: 3,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          onSaved: (val) {
            Globals.grid = val;
          },
          validator: (val) => val!.isEmpty ? '* Must Be Enter GRID' : null,
          onFieldSubmitted: (val) {
            Globals.formKey.currentState!.validate();
          },
          initialValue: Globals.grid,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'GRID',
            hintText: 'Enter your GRID',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: const Icon(Icons.numbers_rounded),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xffC5EBAA),
                width: 3,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          onSaved: (val) {
            Globals.standard = val;
          },
          validator: (val) => val!.isEmpty ? '* Must Be Enter Standard' : null,
          onFieldSubmitted: (val) {
            Globals.formKey.currentState!.validate();
          },
          initialValue: Globals.standard,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            labelText: 'Standard',
            hintText: 'Enter your Standard',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: const Icon(Icons.book),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color(0xffC5EBAA),
                width: 3,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              foregroundImage:
                  Globals.image != null ? FileImage(Globals.image!) : null,
            ),
            Align(
              alignment: const Alignment(0.35, 0.35),
              child: FloatingActionButton.small(
                backgroundColor: const Color(0xffC5EBAA),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
//Dialogue box
                      return AlertDialog(
                        backgroundColor: const Color(0xffC5EBAA),
                        title: const Text('Select Option'),
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
//Gallery Button
                            IconButton(
                              onPressed: () async {
                                XFile? img = await ImagePicker().pickImage(
                                  source: ImageSource.gallery,
                                );
                                if (img != null) {
                                  Globals.image = File(img!.path);
                                  Navigator.pop(context);
                                  reset();
                                }
                              },
                              icon: const Icon(
                                Icons.photo,
                                size: 50,
                                color: Colors.black,
                              ),
                            ),
//Camera Button
                            IconButton(
                              onPressed: () async {
                                final img = await ImagePicker().pickImage(
                                  source: ImageSource.camera,
                                );
                                if (img != null) {
                                  Globals.image = File(img.path);
                                  Navigator.pop(context);
                                  reset();
                                }
                              },
                              icon: const Icon(
                                Icons.photo_camera,
                                size: 50,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70),
                ),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
//Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
//Save Button
            saveButton(context: context),
//Reset Button
            resetButton(reset: reset),
          ],
        ),
      ],
    ),
  );
}
