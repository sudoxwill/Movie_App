import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_alpha.dart';
import 'package:movie_app/shared/constants/app_radius.dart';
import 'package:movie_app/shared/constants/app_sizes.dart';
import 'package:movie_app/shared/extensions/context_extensions.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: AppRadius.sm,
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: context.colorScheme.onSurface.withAlpha(AppAlpha.subtle),
        prefixIcon: Icon(Icons.search),
        hintText: hintText,
        hintStyle: context.texte.titleMedium?.copyWith(
          color: context.colorScheme.onSurface.withAlpha(AppAlpha.medium),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  final FormFieldValidator<String> validator;
  final int maxLines;
  final FormFieldSetter<String> onSaved;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.textInputType,
    required this.validator,
    this.maxLines = 1,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSizes.sm,
      children: [
        Text('$labelText *'),
        TextFormField(
          validator: validator,
          onSaved: onSaved,
          maxLines: maxLines,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: AppRadius.sm,
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: AppRadius.sm,
              borderSide: BorderSide(color: context.colorScheme.onError),
            ),
            filled: true,
            fillColor: context.colorScheme.onSurface.withAlpha(AppAlpha.subtle),
            hintText: hintText,
            hintStyle: context.texte.titleMedium?.copyWith(
              color: context.colorScheme.onSurface.withAlpha(AppAlpha.medium),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomDropdownFormField<T> extends StatelessWidget {
  final String hintText;
  final String labelText;
  final double width;
  final FormFieldValidator<T> validator;
  final FormFieldSetter<T> onSaved;
  final List<T> entries;

  const CustomDropdownFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.validator,
    required this.entries,
    required this.onSaved,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSizes.sm,
      children: [
        Text('$labelText *'),
        DropdownMenuFormField<T>(
          width: width,
          decorationBuilder: (context, controller) => InputDecoration(
            border: OutlineInputBorder(
              borderRadius: AppRadius.sm,
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: AppRadius.md,
              borderSide: BorderSide(color: context.colorScheme.onError),
            ),
            filled: true,
            fillColor: context.colorScheme.onSurface.withAlpha(AppAlpha.subtle),
            hintText: hintText,
            hintStyle: context.texte.titleMedium?.copyWith(
              color: context.colorScheme.onSurface.withAlpha(AppAlpha.medium),
            ),
          ),
          hintText: hintText,
          dropdownMenuEntries: entries
              .map(
                (elt) => DropdownMenuEntry(value: elt, label: elt.toString()),
              )
              .toList(),
          validator: validator,
          onSaved: onSaved,
        ),
      ],
    );
  }
}
