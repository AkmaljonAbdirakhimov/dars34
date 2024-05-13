import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Third Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Gap(20),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Salom men Dostonuuuman"),
                    action: SnackBarAction(
                      label: "Close",
                      onPressed: () {
                        ScaffoldMessenger.of(context).clearSnackBars();
                      },
                    ),
                  ),
                );
              },
              child: const Text("Show Snackbar"),
            ),
            const Gap(20),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: const Text("Salom men Abdullajonman!"),
                    actions: [
                      IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).clearMaterialBanners();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ],
                  ),
                );
              },
              child: const Text("Show Material Banner"),
            ),
            const Gap(20),
            OutlinedButton(
              onPressed: () {
                // showDialog(
                //   context: context,
                //   builder: (ctx) {
                //     return AboutDialog(
                //       applicationIcon: Icon(Icons.star),
                //       applicationName: "Start Link",
                //     );
                //   },
                // );

                // showAboutDialog(
                //   context: context,
                //   applicationIcon: Icon(Icons.star_border),
                //   applicationName: "Start Link 2",
                // );

                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        icon: const Icon(Icons.star),
                        content: const Text("Salom"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"),
                          ),
                        ],
                      );
                    });
              },
              child: const Text("Show About Dialog"),
            ),
            const Gap(20),
            OutlinedButton(
              onPressed: () {
                showModalBottomSheet(
                  // isDismissible: false,
                  isScrollControlled: true,
                  context: context,
                  builder: (ctx) {
                    return const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 50,
                        ),
                        Gap(20),
                        Text("Salom vachcha"),
                      ],
                    );
                  },
                );
              },
              child: const Text("Show Bottom Modal Sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
