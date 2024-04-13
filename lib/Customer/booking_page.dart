// ignore_for_file: deprecated_member_use, library_private_types_in_public_api, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookingPage extends StatefulWidget {
  final String carName;
  final List<String> carImageUrls;
  final String carRating;
  final String carRenter;
  final String model;
  final String carSeats;
  final String carAC;
  final String carSafetyRating;
  final String carAddress;
  final String carFuelInfo;
  final String carPrice;
  final List<String> carFeatures;
  final DateTime selectedDate;
  final TimeOfDay selectedTime;

  const BookingPage({
    super.key,
    required this.carName,
    required this.carImageUrls,
    required this.carRating,
    required this.carRenter,
    required this.model,
    required this.carSeats,
    required this.carAC,
    required this.carSafetyRating,
    required this.carAddress,
    required this.carFuelInfo,
    required this.carPrice,
    required this.carFeatures,
    required this.selectedDate,
    required this.selectedTime,
  });

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  bool _locationButtonClicked = false;
  String? _selectedPaymentMethod = 'Please Select Payment Option';

  @override
  void initState() {
    super.initState();
    _selectedPaymentMethod = 'Please Select Payment Option';
  }

  @override
  Widget build(BuildContext context) {
    bool isPaymentMethodSelected =
        _selectedPaymentMethod != 'Please Select Payment Option';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Booking Details',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                )),
            child: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Model : ${widget.model}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'Pickup Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    '${widget.selectedDate.day}/${widget.selectedDate.month}/${widget.selectedDate.year}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'Pickup Time',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightBlue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    widget.selectedTime.format(context),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'Owner Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightBlue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    widget.carRenter,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                Container(
                  width: 150,
                  height: 50,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.lightBlue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Text(
                    widget.carPrice,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 14.0),
            // SizedBox(
            //   height: 250,
            //   width: double.infinity,
            //   child: Stack(
            //     children: [
            //       ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: widget.carImageUrls.length,
            //         itemBuilder: (context, index) {
            //           return Container(
            //             width: 400, // Adjust width as needed
            //             // margin: const EdgeInsets.only(right: 8),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(12.0),
            //               border: Border.all(
            //                 color: Colors.grey,
            //                 width: 5.0,
            //               ),
            //               image: DecorationImage(
            //                 image: AssetImage(widget.carImageUrls[index]),
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           );
            //         },
            //       ),
            //       const SizedBox(height: 6),
            //       Align(
            //         alignment: Alignment.bottomLeft,
            //         child: Container(
            //           padding: const EdgeInsets.all(4),
            //           decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(6),
            //           ),
            //           child: Text(
            //             widget.carRating,
            //             style: const TextStyle(
            //               fontSize: 12,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Payment Options : ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$_selectedPaymentMethod selected!',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                _buildPaymentMethod(
                    icon: Icons.payment, methodName: 'Credit Card'),
                const SizedBox(height: 12),
                _buildPaymentMethod(
                    icon: Icons.payment, methodName: 'Debit Card'),
                const SizedBox(height: 12),
                _buildPaymentMethod(
                    icon: Icons.payment, methodName: 'Net Banking'),
                const SizedBox(height: 12),
                _buildPaymentMethod(
                    icon: Icons.payment, methodName: 'Cash On Delivery'),
              ],
            ),
            const SizedBox(height: 14),
            OverflowBar(
              children: [
                const Text(
                  'Address : ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  widget.carAddress,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: isPaymentMethodSelected
                  ? () {
                      // Navigate to Google Maps with the address
                      _openGoogleMaps(widget.carAddress);
                    }
                  : null,
              child: const Text('See Location'),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _locationButtonClicked ? _confirmBooking : null,
              child: const Text('Confirm Booking'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethod({
    required IconData icon,
    required String methodName,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          if (methodName != 'Cash On Delivery') {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('This payment option is coming soon'),
              ),
            );
          } else {
            setState(() {
              _selectedPaymentMethod =
                  methodName; // Update selected payment method
            });
          }
        },
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(
              methodName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }

  void _confirmBooking() {
    // Implement booking functionality here
    if (_locationButtonClicked) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Booking Confirmation'),
          content: Text('You have successfully booked ${widget.model}'),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'OK',
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  // Function to open Google Maps with a specific address
  Future<void> _openGoogleMaps(String address) async {
    // Encode the address for the URL
    final encodedAddress = Uri.encodeComponent(address);
    // Create the Google Maps URL with the encoded address
    final url =
        'https://www.google.com/maps/search/?api=1&query=$encodedAddress';
    // Launch the URL
    if (await canLaunch(url)) {
      await launch(url);
      setState(() {
        _locationButtonClicked = true;
      });
    } else {
      throw 'Could not launch $url';
    }
  }
}
