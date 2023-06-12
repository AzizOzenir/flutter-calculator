import '../exports.dart';

class GetAppBar extends StatelessWidget {
  const GetAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: Icon(
            Iconsax.menu_1,
            color: Theme.of(context).iconTheme.color,
          ),
        )
      ],
    );
  }
}
