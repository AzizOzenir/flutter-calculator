import 'package:calculator/exports.dart';

class Button extends StatelessWidget {
  String text;
  int index;

  Button({required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    Controller controller = Provider.of<Controller>(context);

    return GestureDetector(
      onTap: () {
        if (text == "C") {
          controller.onCleaned(index);
        } else if (text == "<") {
          controller.onDeleted(index);
        } else if (text == "=") {
          controller.onCalculating(index);
        } else {
          controller.onTyped(text, index);
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: bradiusSoft,
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: controller.isTapped[index]
              ? []
              : [
                  BoxShadow(
                    color: Theme.of(context).shadowColor,
                    blurRadius: 5,
                    spreadRadius: 0.1,
                    blurStyle: BlurStyle.normal,
                    offset: const Offset(2, 2),
                  ),
                ],
        ),
        onEnd: () => controller.onAnimationEnd(index),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: getColor(text, context),
              fontSize: controller.isTapped[index] ? 20 : 24,
              fontWeight: Theme.of(context).textTheme.bodyLarge!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }

  getColor(String x, BuildContext context) {
    if (x == "=" || x == "x" || x == "-" || x == "+" || x == "/" || x == "%") {
      return Colors.deepPurple.shade300;
    } else if (x == "C") {
      return Colors.green;
    } else if (x == "<") {
      return Colors.red;
    } else {
      return Theme.of(context).textTheme.bodyLarge!.color;
    }
  }
}
