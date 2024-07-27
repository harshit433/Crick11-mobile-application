import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  final ButtonShape? shape;

  final ButtonPadding? padding;

  final ButtonVariant? variant;

  final ButtonFontStyle? fontStyle;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final String? text;

  final Widget? prefixWidget;

  final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingT48:
        return getPadding(
          top: 48,
          right: 48,
          bottom: 48,
        );
      case ButtonPadding.PaddingT16:
        return getPadding(
          left: 16,
          top: 16,
          bottom: 16,
        );
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          left: 7,
          top: 7,
          bottom: 7,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray90001:
        return ColorConstant.gray90001;
      case ButtonVariant.OutlineBlack90002:
        return ColorConstant.blueA200D8;
      case ButtonVariant.FillGray50072:
        return ColorConstant.gray50072;
      case ButtonVariant.FillRedA700:
        return ColorConstant.redA700;
      case ButtonVariant.OutlineBlack900:
        return ColorConstant.blueA700;
      case ButtonVariant.FillGray800f7:
        return ColorConstant.gray800F7;
      case ButtonVariant.FillGray80003:
        return ColorConstant.gray80003;
      case ButtonVariant.OutlineBlueA200d8:
      case ButtonVariant.OutlineBlueA200:
      case ButtonVariant.OutlineBlueA200_1:
        return null;
      default:
        return ColorConstant.blueA200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlack90002:
        return BorderSide(
          color: ColorConstant.black90002,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlueA200d8:
        return BorderSide(
          color: ColorConstant.blueA200D8,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack900:
        return BorderSide(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlueA200:
        return BorderSide(
          color: ColorConstant.blueA200,
          width: getHorizontalSize(
            3.00,
          ),
        );
      case ButtonVariant.OutlineBlueA200_1:
        return BorderSide(
          color: ColorConstant.blueA200,
          width: getHorizontalSize(
            4.00,
          ),
        );
      case ButtonVariant.FillBlueA200:
      case ButtonVariant.FillGray90001:
      case ButtonVariant.FillGray50072:
      case ButtonVariant.FillRedA700:
      case ButtonVariant.FillGray800f7:
      case ButtonVariant.FillGray80003:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.RoundedBorder26:
        return BorderRadius.circular(
          getHorizontalSize(
            26.00,
          ),
        );
      case ButtonShape.CircleBorder18:
        return BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterExtraBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.SansationBold18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Sansation',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterSemiBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRomanMedium16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRomanBlack20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w900,
        );
      case ButtonFontStyle.InterBold16Gray90002:
        return TextStyle(
          color: ColorConstant.gray90002,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterExtraBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        );
      case ButtonFontStyle.RobotoRomanBlack16Gray90002:
        return TextStyle(
          color: ColorConstant.gray90002,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w900,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w900,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder26,
  RoundedBorder6,
  CircleBorder18,
}

enum ButtonPadding {
  PaddingAll6,
  PaddingAll10,
  PaddingT48,
  PaddingT16,
  PaddingAll18,
  PaddingT7,
}

enum ButtonVariant {
  FillBlueA200,
  FillGray90001,
  OutlineBlack90002,
  OutlineBlueA200d8,
  FillGray50072,
  FillRedA700,
  OutlineBlack900,
  OutlineBlueA200,
  FillGray800f7,
  FillGray80003,
  OutlineBlueA200_1,
}

enum ButtonFontStyle {
  RobotoRomanBlack16,
  InterExtraBold20,
  SansationBold18,
  InterSemiBold16,
  RobotoRomanMedium16,
  InterBold16,
  RobotoRomanBlack20,
  InterBold16Gray90002,
  InterExtraBold14,
  RobotoRomanBlack16Gray90002,
}
