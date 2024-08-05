import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Feed Page'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Feed Page',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
              child: Text('Selected Category'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text('Select Categories'),
                      actions: [
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CategoryPage(
                                    selectedCategory: 'Technology'),
                              ),
                            );
                          },
                          child: Text('Technology'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>
                                    CategoryPage(selectedCategory: 'Business'),
                              ),
                            );
                          },
                          child: Text('Business'),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>
                                    CategoryPage(selectedCategory: 'Sport'),
                              ),
                            );
                          },
                          child: Text('Sport'),
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String selectedCategory;

  CategoryPage({required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('$selectedCategory Page'),
      ),
      child: Center(
        child: Text(
          '$selectedCategory Page',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
      ),
    );
  }
}
