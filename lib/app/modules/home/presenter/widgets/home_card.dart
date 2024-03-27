import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeCard extends StatelessWidget {
  final String imageUri;
  final bool? isLoading;
  const HomeCard({super.key, required this.imageUri, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.5,
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: theme.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: theme.onSurface.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: isLoading!
          ? _buildLoading()
          : ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUri,
                fit: BoxFit.cover,
              ),
            ),
    );
  }

  Widget _buildLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300]!,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
