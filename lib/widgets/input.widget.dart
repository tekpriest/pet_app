import 'package:flutter/material.dart';
import 'package:pet_app/helpers/app/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final String field;
  final bool isOptional;
  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.field,
    required this.isOptional,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (isOptional) return null;
        value = value!.trim();
        if (value.isEmpty) {
          return 'Please enter ${field} value';
        }
        return null;
      },
      controller: controller,
      obscureText: obscureText!,
      decoration: InputDecoration(
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
      {Widget? title,
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
