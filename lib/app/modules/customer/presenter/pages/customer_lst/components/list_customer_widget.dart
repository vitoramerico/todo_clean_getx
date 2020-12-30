import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

import '../../../../domain/entities/customer_entity.dart';
import '../customer_lst_controller.dart';
import 'itens_customer_widget.dart';

class ListCustomerWidget extends StatelessWidget {
  final CustomerLstController controller;

  const ListCustomerWidget({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (value) => _buildSuccess(value),
      onEmpty: _buildEmpty(context),
      onError: (error) => _buildError(error),
    );
  }

  Widget _buildSuccess(List<CustomerEntity> lstValue) => LazyLoadScrollView(
        onEndOfPage: controller.loadNextPage,
        isLoading: controller.store.lastPage,
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            return ItensCustomerWidget(
              customerEntity: lstValue[index],
              onPressed: (v) => controller.openPageCustomerAdd(value: v),
            );
          },
          itemCount: lstValue.length,
        ),
      );

  Widget _buildError(String error) => Center(
        child: Text(
          error,
          style: TextStyle(color: Colors.red),
        ),
      );

  Widget _buildEmpty(BuildContext context) => Center(
        child: Text(
          'Nenhum resultado encontrado :/',
          style: Theme.of(context).textTheme.headline5,
        ),
      );
}
