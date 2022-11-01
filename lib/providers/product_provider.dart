import 'package:ecom_admin_3/db/db_helper.dart';
import 'package:ecom_admin_3/models/category_model.dart';
import 'package:ecom_admin_3/models/product_model.dart';
import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier{
  List<CategoryModel>categoryList=[];
  List<ProductModel>productList=[];

  Future<void>addCategory(String category){
    final categoryModel=CategoryModel(categoryName: category);
    return DbHelper.addCategory(categoryModel);
  
  }

}