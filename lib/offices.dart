import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:openapi/openapi.dart';
import 'api_provider.dart';
import 'package:provider/provider.dart';


Future<List<OfficesGet200ResponseInner>> fetch_offices(BuildContext context) async
  {
    var reply = await context.read<APIProvider>().api.getDefaultApi()
                    .officesGet();
    if(reply.statusCode != 200 || reply.data == null)
    {
      return [];
    }
    var offices = reply.data!.toList();
    return offices;
  }