import 'package:flutter/material.dart';
import 'package:movie_app/controller/theme_controller.dart';
import 'package:movie_app/shared/constants/app_alpha.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';
import 'package:movie_app/widgets/toggle_elevated_button.dart';

final double _settingsListHeight = 300;

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (innerContext) {
            return IconButton(
              onPressed: () {
                Scaffold.of(innerContext).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        title: Text('Paramètres'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
            child: SizedBox(
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSizes.sm,
                  children: [
                    SizedBox(height: AppSizes.md),
                    Text(
                      'Apparence',
                      style: context.texte.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Theme', style: context.texte.titleLarge),
                        Text(
                          'Choisiseez votre théme préféré',
                          style: context.texte.bodyLarge?.copyWith(
                            color: context.colorScheme.onSurface.withAlpha(
                              AppAlpha.medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: constraints.maxWidth,
                      height: AppSizes.toggleButtonHeight,
                      decoration: BoxDecoration(
                        color: context.colorScheme.onSurface.withAlpha(
                          AppAlpha.subtle,
                        ),
                        borderRadius: AppRadius.sm,
                      ),
                      child: ValueListenableBuilder(
                        valueListenable: themeNotifier,
                        builder: (_, currentMode, _) {
                          final isDark = currentMode == ThemeMode.dark;
                          return Row(
                            children: [
                              Expanded(
                                child: ToggleElevatedButton(
                                  icon: Icon(Icons.light_mode),
                                  label: 'Clair',
                                  onPressed: () {
                                    themeNotifier.value = isDark
                                        ? ThemeMode.light
                                        : ThemeMode.dark;
                                  },
                                  isActive: isDark == false,
                                ),
                              ),
                              Expanded(
                                child: ToggleElevatedButton(
                                  icon: Icon(Icons.dark_mode),
                                  label: 'Sombre',
                                  onPressed: () {
                                    themeNotifier.value = isDark
                                        ? ThemeMode.light
                                        : ThemeMode.dark;
                                  },
                                  isActive: isDark,
                                  borderRadiusSide: BorderRadiusSide.right,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Divider(),
                    SizedBox(height: AppSizes.md),
                    Text(
                      'Général',
                      style: context.texte.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),

                    SizedBox(
                      width: constraints.maxWidth,
                      height: _settingsListHeight,
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                            leading: Icon(Icons.language),
                            title: Text('Langue'),
                            trailing: Text('Français'),
                          ),
                          ListTile(
                            leading: Icon(Icons.notifications),
                            title: Text('Notifications'),
                            trailing: Switch(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.info_outline),
                            title: Text('A propos'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          ListTile(
                            leading: Icon(Icons.security_rounded),
                            title: Text('Confidentialité'),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: context.colorScheme.error,
                            ),
                            title: Text(
                              'Déconnexion',
                              style: TextStyle(
                                color: context.colorScheme.error,
                              ),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: context.colorScheme.error,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
