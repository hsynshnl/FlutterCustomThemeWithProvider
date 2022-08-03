import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_template/core/provider/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Theme"),
        leading: Icon(Icons.list),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 100,
              ),
              Consumer<ThemeProvider>(builder: (context, provider, child) {
                return DropdownButton<String>(
                  value: provider.currentTheme,
                  items: [
                    //Light, dark, and system
                    DropdownMenuItem<String>(
                      value: 'light',
                      child: Text(
                        'Light',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),

                    DropdownMenuItem<String>(
                      value: 'dark',
                      child: Text(
                        'Dark',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    DropdownMenuItem<String>(
                      value: 'system',
                      child: Text(
                        'System',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                  onChanged: (String? value) {
                    provider.changeTheme(value ?? 'system');
                  },
                );
              }),
              Text(
                'Header2',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Header3',
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                'Header4',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                'Header 4 dif color',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Theme.of(context).indicatorColor),
              ),
              Text(
                'Header 4 fixed color',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.deepOrange),
              ),
              Text(
                'Header5',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Header6',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'bodyLarge',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'bodyMedium',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                'bodySmall',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
