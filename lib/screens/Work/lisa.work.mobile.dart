import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/utils.dart';
import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  int get _gridItemCount => 1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final gridItemWidth = constraints.maxWidth / _gridItemCount;
        return Column(
          children: [
            AnimateEmojis(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                infoText,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: _gridItemCount,
              childAspectRatio: 1,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(
                GridItemC.lisaWorklist.length,
                (index) => GridItem(
                  width: gridItemWidth,
                  imgHash: GridItemC.lisaWorklist[index].blurHash,
                  imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
                  subtitle: GridItemC.lisaWorklist[index].subtitle,
                  title: GridItemC.lisaWorklist[index].title,
                  onPress: () {},
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
