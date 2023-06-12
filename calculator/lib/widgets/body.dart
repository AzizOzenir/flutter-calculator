import 'package:calculator/exports.dart';

class GetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(flex: 1, child: DisplayingPanel()),
        Expanded(flex: 3, child: OperationPanel())
      ],
    );
  }
}

class DisplayingPanel extends StatelessWidget {
  const DisplayingPanel({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Provider.of(context);
    return Row(
      children: [
        const SizedBox(
          width: 26,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 30),
            Text(
              controller.input,
              style: TextStyle(
                  fontSize: 32,
                  color: Theme.of(context).textTheme.bodyMedium!.color),
            ),
            Text(
              controller.result,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 22),
            )
          ],
        )
      ],
    );
  }
}

class OperationPanel extends StatelessWidget {
  List operators = [
    "C",
    "<",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "00",
    "0",
    ".",
    "=",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 25,
        ),
        itemCount: operators.length,
        itemBuilder: (context, i) => Button(
          text: operators[i],
          index: i,
        ),
      ),
    );
  }
}
