import 'package:tabler_icons/tabler_icons.dart';

import '../exports.dart';

class GetDrawer extends StatelessWidget {
  const GetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Controller controller = Provider.of(context);
    ThemeController themeController = Provider.of(context);
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.black.withOpacity(0.005),
      child: Column(
        children: [
          GestureDetector(
            child: UserAccountsDrawerHeader(
              accountName: Row(
                children: const [
                  Icon(Icons.info, color: Colors.white),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "info ",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
              accountEmail: Text(
                controller.date,
                style: const TextStyle(color: Colors.white),
              ),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(12)),
                color: Colors.black,
                /*  image: DecorationImage(
                      image: AssetImage("assets/images/icon.png"),
                      fit: BoxFit.cover) */
              ),
            ),
          ),
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () => themeController.onModeChanged(),
            child: AnimatedContainer(
              margin: const EdgeInsets.all(8),
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  borderRadius: bradiusSharp,
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    themeController.isDark ? TablerIcons.moon : TablerIcons.sun,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  title: Text(
                    themeController.isDark ? "Dark Mode" : "Light Mode",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
