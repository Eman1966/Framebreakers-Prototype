import 'package:tag_play/core/core.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  /// The currently selected index
  final int currentIndex;

  /// Callback when an item is tapped
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      currentIndex: currentIndex,
      onTap: onItemTapped,
      selectedItemColor: PrimaryColor.primary_500,
      unselectedItemColor:  GreyColors.grey_500,
      iconSize: 24.h,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/home-wifi.svg'),
          activeIcon: SvgPicture.asset(
            'assets/icons/home-wifi.svg',
            color: PrimaryColor.primary_500,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/book.svg'),
          activeIcon: SvgPicture.asset(
            'assets/icons/book.svg',
            color: PrimaryColor.primary_500,
          ),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/profile.svg'),
          activeIcon: SvgPicture.asset(
            'assets/icons/profile.svg',
            color: PrimaryColor.primary_500,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
