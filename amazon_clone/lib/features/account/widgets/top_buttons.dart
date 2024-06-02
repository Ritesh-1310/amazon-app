import 'package:amazon_clone/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart';
import '../services/account_services.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AccountButton(
                text: 'Your Orders',
                onTap: () {},
              ),
            ),
            Expanded(
              child: AccountButton(
                text: 'Turn Seller',
                onTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: AccountButton(
                text: 'Log Out',
                onTap: () => AccountServices().logOut(context),
              ),
            ),
            Expanded(
              child: AccountButton(
                text: 'Your Wish List',
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
