import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'display_received_data_widget.dart' show DisplayReceivedDataWidget;
import 'package:flutter/material.dart';

class DisplayReceivedDataModel
    extends FlutterFlowModel<DisplayReceivedDataWidget> {
  ///  Local state fields for this component.

  String? data;

  ///  State fields for stateful widgets in this component.

  InstantTimer? receivedDataTimer;
  // Stores action output result for [Custom Action - receiveData] action in DisplayReceivedData widget.
  String? receivedData;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    receivedDataTimer?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
