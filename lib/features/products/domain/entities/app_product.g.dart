// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppProductAdapter extends TypeAdapter<AppProduct> {
  @override
  final int typeId = 1;

  @override
  AppProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppProduct(
      id: fields[0] as int,
      isFavorite: fields[1] as bool,
      title: fields[2] as String,
      description: fields[3] as String,
      category: fields[4] as String,
      price: fields[5] as double,
      discountPercentage: fields[6] as double,
      rating: fields[7] as double,
      stock: fields[8] as int,
      tags: (fields[9] as List).cast<String>(),
      brand: fields[10] as String,
      sku: fields[11] as String,
      weight: fields[12] as int,
      warrantyInformation: fields[13] as String,
      shippingInformation: fields[14] as String,
      availabilityStatus: fields[15] as String,
      reviews: (fields[16] as List).cast<Review>(),
      returnPolicy: fields[17] as String,
      minimumOrderQuantity: fields[18] as int,
      images: (fields[19] as List).cast<String>(),
      thumbnail: fields[20] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppProduct obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.isFavorite)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.discountPercentage)
      ..writeByte(7)
      ..write(obj.rating)
      ..writeByte(8)
      ..write(obj.stock)
      ..writeByte(9)
      ..write(obj.tags)
      ..writeByte(10)
      ..write(obj.brand)
      ..writeByte(11)
      ..write(obj.sku)
      ..writeByte(12)
      ..write(obj.weight)
      ..writeByte(13)
      ..write(obj.warrantyInformation)
      ..writeByte(14)
      ..write(obj.shippingInformation)
      ..writeByte(15)
      ..write(obj.availabilityStatus)
      ..writeByte(16)
      ..write(obj.reviews)
      ..writeByte(17)
      ..write(obj.returnPolicy)
      ..writeByte(18)
      ..write(obj.minimumOrderQuantity)
      ..writeByte(19)
      ..write(obj.images)
      ..writeByte(20)
      ..write(obj.thumbnail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
