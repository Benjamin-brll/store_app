import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color customBrown = Color(0xff292526);
const Color customDarkBrown = Color(0xff1b2028);

const Color customGrey = Color(0xffa4aaad);
const Color customDarkGrey = Color(0xff878787);
const Color customLightGrey = Color(0xffededed);

const Color customWhite = Color(0xffffffff);

const Color customBlack = Color(0xff111111);

const Color customYellow = Color(0xffffd33c);

const double customBorderRadius = 12.0;

const double customPaddingHorizontal = 24.0;

final customInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(customBorderRadius),
  borderSide: const BorderSide(
    color: customLightGrey
  )
);

final customEncodeSansBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w700,
);

final customEncodeSansSemiBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w600,
);

final customEncodeSansMedium = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w500,
);

final customEncodeSansRegular = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w400,
);