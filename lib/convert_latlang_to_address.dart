import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';

class ConvertLatLangToAddress extends StatefulWidget {
  const ConvertLatLangToAddress({Key? key}) : super(key: key);

  @override
  _ConvertLatLangToAddressState createState() =>
      _ConvertLatLangToAddressState();
}

class _ConvertLatLangToAddressState extends State<ConvertLatLangToAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text('latitude: 25.594095, longitude: 85.137566'),
                //   Text(address),
              ],
            ),
            const SizedBox(height: 40),
            Column(
              children: <Widget>[
                const Text('address: Khemnichak Patna, 7'),
                //Text(latLong),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // From coordinates
          final coordinates = Coordinates(25.620667, 85.049324);
          final addresses =
              await Geocoder.local.findAddressesFromCoordinates(coordinates);
          final first = addresses.first;
          print("${first.featureName} : ${first.addressLine}");

          // From a query
          const query = "1600 Amphiteatre Parkway, Mountain View";
          var add = await Geocoder.local.findAddressesFromQuery(query);
          var second = add.first;
          print("${second.featureName} : ${second.coordinates}");
          // setState(() {});
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
