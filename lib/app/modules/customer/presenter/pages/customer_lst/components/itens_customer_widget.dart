import 'package:flutter/material.dart';

import '../../../../domain/entities/customer_entity.dart';

class ItensCustomerWidget extends StatelessWidget {
  final CustomerEntity customerEntity;
  final Function(CustomerEntity) onPressed;

  const ItensCustomerWidget({
    Key key,
    @required this.customerEntity,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: const Icon(Icons.person)),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () => onPressed(customerEntity),
      ),
      title: Text(customerEntity.name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(customerEntity.emailAddress),
          //Text(customerEntity.createAt ?? ''),
        ],
      ),
    );
  }
}
