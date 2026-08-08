import 'package:flutter/material.dart';
import 'package:movie_app/datas/movies.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/widgets/custom_elevated_button.dart';
import 'package:movie_app/widgets/custom_text_field.dart';
import 'package:movie_app/widgets/image_add_widget.dart';

class AddMovieScreen extends StatefulWidget {
  const AddMovieScreen({super.key});

  @override
  State<AddMovieScreen> createState() => _AddMovieScreenState();
}

class _AddMovieScreenState extends State<AddMovieScreen> {
  final formKey = GlobalKey<FormState>();

  FormFieldValidator<String> defaultValidator = (String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Champ obligatoire';
    }
    return null;
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajouter un film')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
            child: SizedBox(
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: AppSizes.md,
                    children: [
                      SizedBox(height: AppSizes.xs),
                      ImageAddWidget(),
                      CustomTextFormField(
                        hintText: 'Ex: Inception',
                        labelText: 'Titre',
                        textInputType: TextInputType.text,
                        validator: defaultValidator,
                        onSaved: (newValue) {},
                      ),
                      CustomTextFormField(
                        hintText: 'Ex: Christopher Nolan',
                        labelText: 'Réalisateur',
                        textInputType: TextInputType.text,
                        validator: defaultValidator,
                        onSaved: (newValue) {},
                      ),
                      CustomTextFormField(
                        hintText: 'Ex: 2010',
                        labelText: 'Année',
                        textInputType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Champ obligatoire';
                          } else if (int.tryParse(value) == null) {
                            return 'Entrez une année valide (ex: 2024)';
                          }
                          return null;
                        },
                        onSaved: (newValue) {},
                      ),
                      CustomDropdownFormField(
                        hintText: 'Sélectionner un genre',
                        labelText: 'Genre',
                        validator: (value) {
                          if (value == null) {
                            return 'Champ obligatoire';
                          }
                          return null;
                        },
                        onSaved: (newValue) {},
                        entries: genres,
                        width: constraints.maxWidth,
                      ),
                      CustomTextFormField(
                        hintText: 'Décrivez le film...',
                        labelText: 'Synopsis',
                        textInputType: TextInputType.text,
                        maxLines: 3,
                        validator: defaultValidator,
                        onSaved: (newValue) {},
                      ),
                      CustomElevatedButton(
                        label: 'Enregistrer',
                        width: constraints.maxWidth,
                        onPressed: () {
                          final isFormValid = formKey.currentState?.validate();

                          if (isFormValid == true) {
                            formKey.currentState?.save();
                          }
                        },
                      ),
                      SizedBox(height: AppSizes.md),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
