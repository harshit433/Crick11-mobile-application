import 'package:flutter/material.dart';
import 'package:crick11/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  final IconButtonShape? shape;

  final IconButtonPadding? padding;

  final IconButtonVariant? variant;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      case IconButtonPadding.PaddingAll2:
        return getPadding(
          all: 2,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillYellow200:
        return ColorConstant.yellow200;
      case IconButtonVariant.OutlineBlack9003f:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillPurple800:
        return ColorConstant.purple800;
      case IconButtonVariant.OutlineGreen500:
        return ColorConstant.green500;
      case IconButtonVariant.FillGray70002:
        return ColorConstant.gray70002;
      case IconButtonVariant.FillGray70001:
        return ColorConstant.gray70001;
      case IconButtonVariant.FillPink500:
        return ColorConstant.pink500;
      case IconButtonVariant.FillYellow900:
        return ColorConstant.yellow900;
      case IconButtonVariant.FillGray90002:
        return ColorConstant.gray90002;
      case IconButtonVariant.OutlineBluegray100:
      case IconButtonVariant.OutlineGray90002:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGreen500:
        return Border.all(
          color: ColorConstant.green500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray90002:
        return Border.all(
          color: ColorConstant.gray90002,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillYellow200:
      case IconButtonVariant.OutlineBlack9003f:
      case IconButtonVariant.FillPurple800:
      case IconButtonVariant.FillGray70002:
      case IconButtonVariant.FillGray70001:
      case IconButtonVariant.FillPink500:
      case IconButtonVariant.FillYellow900:
      case IconButtonVariant.FillGray90002:
        return null;
      default:
        return Border.all(
          color: ColorConstant.blueGray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder14:
        return BorderRadius.circular(
          getHorizontalSize(
            14.00,
          ),
        );
      case IconButtonShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              2,
            ),
          ),
        ];
      case IconButtonVariant.OutlineBluegray100:
      case IconButtonVariant.FillYellow200:
      case IconButtonVariant.FillPurple800:
      case IconButtonVariant.OutlineGreen500:
      case IconButtonVariant.FillGray70002:
      case IconButtonVariant.FillGray70001:
      case IconButtonVariant.FillPink500:
      case IconButtonVariant.FillYellow900:
      case IconButtonVariant.OutlineGray90002:
      case IconButtonVariant.FillGray90002:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder10,
  RoundedBorder14,
  CircleBorder27,
}

enum IconButtonPadding {
  PaddingAll12,
  PaddingAll8,
  PaddingAll2,
}

enum IconButtonVariant {
  OutlineBluegray100,
  FillYellow200,
  OutlineBlack9003f,
  FillPurple800,
  OutlineGreen500,
  FillGray70002,
  FillGray70001,
  FillPink500,
  FillYellow900,
  OutlineGray90002,
  FillGray90002,
}
