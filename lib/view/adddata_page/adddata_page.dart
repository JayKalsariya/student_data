import 'package:student_data/utils/headers.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({super.key});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    void reset() {
      setState(() {});
    }

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: myAppBar2(reset: reset, context: context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: myForm(reset: reset, context: context),
        ),
      ),
    );
  }
}
