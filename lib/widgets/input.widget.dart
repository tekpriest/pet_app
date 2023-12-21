import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:pet_app/helpers/app/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final String field;
  final bool isOptional;
  final IconData? prefixIcon;
  final String? labelText;
  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.field,
    required this.isOptional,
    this.obscureText = false,
    this.prefixIcon,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (isOptional) return null;
        value = value!.trim();
        if (value.isEmpty) {
          return 'Please enter $field value';
        }
        return null;
      },
      controller: controller,
      obscureText: obscureText!,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon != null
            ? const Padding(
              padding: EdgeInsets.only(left: 20, right: 5),
              child: Icon(
                  IconlyLight.search,
                  color: Color(0xFFE5E4E3),
                  size: 30,
                ),
            )
            : null,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.alertError, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.alertError, width: 1.5),
        ),
        prefixText: '  ',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFE5E4E3), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Color(0xFFFD9340), width: 1.5),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
            color: Color(0xFFB3B1B0), fontSize: 14, height: 0.11),
      ),
    );
  }
}

class CheckboxField extends FormField<bool> {
  CheckboxField(
      {super.key, Widget? title,
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      bool initialValue = false,
      bool autovalidate = false})
      : super(
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return CheckboxListTile(
                dense: state.hasError,
                title: title,
                value: state.value,
                onChanged: state.didChange,
                subtitle: state.hasError
                    ? Builder(
                        builder: (BuildContext context) => Text(
                          state.errorText ?? "",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}
