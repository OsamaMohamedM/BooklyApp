import 'package:flutter/material.dart';

import 'widgets/BookDetailsViewBody.dart';

class BookDetailsView extends StatelessWidget {
const BookDetailsView({ super.key });

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
         leading: IconButton(onPressed: (){}, icon: const Icon(Icons.close)),
         actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))
         ],
      ),
      body:   const BookDetailsViewBody());
  }
}