import 'package:student_data/utils/globals.dart';
import 'package:student_data/utils/headers.dart';
import 'package:student_data/view/adddata_page/components/snackbar.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({super.key});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: const Text('Add Data Page'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: Globals.formKey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (val) {
                    Globals.name = val;
                  },
                  validator: (val) =>
                      val!.isEmpty ? '* Must Be Enter Name' : null,
                  onFieldSubmitted: (val) {
                    Globals.formKey.currentState!.validate();
                  },
                  initialValue: Globals.name,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your full name',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onSaved: (val) {
                    Globals.grid = val;
                  },
                  validator: (val) =>
                      val!.isEmpty ? '* Must Be Enter GRID' : null,
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onSaved: (val) {
                    Globals.standard = val;
                  },
                  validator: (val) =>
                      val!.isEmpty ? '* Must Be Enter Standard' : null,
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
//Button
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
//Save Button
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            if (Globals.formKey.currentState!.validate()) {
                              Globals.formKey.currentState!.save();
                            }
                            Globals.StudentList.add({
                              "name": Globals.name,
                              "grid": Globals.grid,
                              "standard": Globals.standard,
                            });
                            print("====================================");
                            print("Student List: ${Globals.name}");
                            print("====================================");
                            ScaffoldMessenger.of(context).showSnackBar(
                              mySnackBar(
                                content:
                                    Globals.formKey.currentState!.validate()
                                        ? "Form saved"
                                        : "Failed to validate the form",
                                color: Globals.formKey.currentState!.validate()
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(120, 97, 53, 254),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
//Reset Button
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            Globals.globals.reset();
                            Globals.formKey.currentState!.reset();
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(120, 97, 53, 254),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Reset',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
