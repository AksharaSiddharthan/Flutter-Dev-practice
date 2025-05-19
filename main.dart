import 'package:flutter/material.dart';

void main() => runApp(const RealestayApp());

class RealestayApp extends StatelessWidget {
  const RealestayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003B46),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
  // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.house, color: Colors.white, size: 30.0),
                  Text(
                    "Realestay",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.menu_rounded, color: Colors.white, size: 30.0),
                ],
              ),

              const SizedBox(height: 50),

  // 100% Trusted Tag
              const ElevatedButton(
                ButtonStyle(borderRadius: new BorderRadius.circular(20.0),r)
                onPressed: null,
                child: Text(
                  '100% Trusted',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                   
                  ),
                ),
              ),

              const SizedBox(height: 30),

  // Hero Section Text
              const Text(
                "Buy, rent, or sell\nyour property easily",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 15),

  // Subtext
              const Text(
                "A great platform to buy, sell, or even rent your properties without any commissions.",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              const SizedBox(height: 20),

  // Contact Us Now Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.add_call, color: Colors.white),
                    SizedBox(width: 9),
                    Text(
                      "Contact Us Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

  // White Form Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Quick Find Your\nProperty In The World",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF003B46),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CustomInputField(
                      hintText: 'Location',
                      icon: Icons.location_on,
                    ),
                    const SizedBox(height: 10),
                    const CustomDropdownField(
                      hintText: 'House Type',
                      items: ['Apartment', 'Villa', 'Condo'],
                    ),
                    const SizedBox(height: 10),
                    const CustomInputField(
                      hintText: '\$0.00',
                      icon: Icons.attach_money,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Search Property",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Input Field
class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;

  const CustomInputField({
    super.key,
    required this.hintText,
    required this.icon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}

// Custom Dropdown Field
class CustomDropdownField extends StatelessWidget {
  final String hintText;
  final List<String> items;

  const CustomDropdownField({
    super.key,
    required this.hintText,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: Colors.grey[200],
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: null,
          hint: Text(hintText),
          isExpanded: true,
          onChanged: (_) {},
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
