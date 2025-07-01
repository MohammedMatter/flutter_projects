// ignore_for_file: public_member_api_docs, sort_constructors_first
class Car {
  final String name; // اسم السيارة: Kia Picanto
  final String type; // نوع الوقود: مدمجة أو مليء (حسب المعنى المقصود من "مدمجة" في السياق)
  final String fuelType; // نوع الوقود: مدمجة أو مليء (حسب المعنى المقصود من "مدمجة" في السياق)
  final bool hasAirConditioning; // هل يوجد تكييف
  final int doors; // عدد الأبواب: 4
  final int seats; // عدد المقاعد: 4
  final int largeBags; // عدد الحقائب الكبيرة: 1
  final bool isManual; // ناقل حركة يدوي
  final String imageUrl; // في حال أردت عرض صورة للسيارة

  Car({
    required this.name,
    required this.type,
    required this.fuelType,
    required this.hasAirConditioning,
    required this.doors,
    required this.seats,
    required this.largeBags,
    required this.isManual,
    required this.imageUrl,
  });
}
