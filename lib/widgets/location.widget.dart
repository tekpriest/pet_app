import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pet_app/helpers/app/colors.dart';
import 'package:pet_app/widgets/input.widget.dart';

class LocationSheet extends StatelessWidget {
  final searchCtrl = SearchController();

  final LatLng _center = const LatLng(45.521563, -122.677433);
  late GoogleMapController mapController;
  LocationSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Container(
          height: 5,
          width: 55,
          margin: const EdgeInsets.symmetric(horizontal: 188),
          decoration: BoxDecoration(
            color: AppColors.textGray,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Location',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InputField(
            controller: searchCtrl,
            hintText: 'Search your location',
            field: 'search',
            isOptional: true,
            prefixIcon: IconlyLight.search,
          ),
        ),
        const SizedBox(height: 5),
        const Center(
          child: Text(
            'Automatically selects your current location',
            style: TextStyle(color: AppColors.textGray),
          ),
        ),
        const SizedBox(height: 20),
        const Divider(height: 3),
        Expanded(
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
        ),
      ],
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}

