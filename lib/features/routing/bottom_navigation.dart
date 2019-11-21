import 'package:flutter/material.dart';

enum TabItem { home, toc, search, notes, library }

Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.toc: 'Toc',
  TabItem.search: 'Search',
  TabItem.notes: 'Notes',
  TabItem.library: 'Library'
};

Map<TabItem, IconData> tabIcons = {
  TabItem.home: Icons.home,
  TabItem.toc: Icons.toc,
  TabItem.search: Icons.search,
  TabItem.notes: Icons.note_add,
  TabItem.library: Icons.library_books,
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.home),
        _buildItem(tabItem: TabItem.toc),
        _buildItem(tabItem: TabItem.search),
        _buildItem(tabItem: TabItem.notes),
        _buildItem(tabItem: TabItem.library),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem({TabItem tabItem}) {
    String name = tabName[tabItem];
    IconData icon = tabIcons[tabItem];

    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _colorTabMatching(item: tabItem),
      ),
      title: Text(
        name,
        style: TextStyle(color: _colorTabMatching(item: tabItem)),
      ),
    );
  }

  Color _colorTabMatching({TabItem item}) {
    return currentTab == item ? Colors.green : Colors.grey;
  }
}
