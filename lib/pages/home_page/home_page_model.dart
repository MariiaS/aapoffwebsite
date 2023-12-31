import '/backend/supabase/supabase.dart';
import '/components/subscription_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isGalleryHidden = true;
  int hoveredTabIndex = -1;

  ExhibitionsRow? exhibitionRef;

  OtherRow? otherRef;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for SubscriptionWidget component.
  late SubscriptionWidgetModel subscriptionWidgetModel1;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;

  int carouselCurrentIndex1 = 2;

  // Model for SubscriptionWidget component.
  late SubscriptionWidgetModel subscriptionWidgetModel2;
  // State field(s) for Carousel widget.
  CarouselController? carouselController2;

  int carouselCurrentIndex2 = 2;

  // Model for SubscriptionWidget component.
  late SubscriptionWidgetModel subscriptionWidgetModel3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    subscriptionWidgetModel1 =
        createModel(context, () => SubscriptionWidgetModel());
    subscriptionWidgetModel2 =
        createModel(context, () => SubscriptionWidgetModel());
    subscriptionWidgetModel3 =
        createModel(context, () => SubscriptionWidgetModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    subscriptionWidgetModel1.dispose();
    subscriptionWidgetModel2.dispose();
    subscriptionWidgetModel3.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
