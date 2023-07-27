import 'package:flutter/material.dart';
import 'package:tiffily_1/models/quick_link_models.dart';

final QuickLinks manageMenu = QuickLinks(
  id: 0,
  name: 'Manage\nMenu',
  desc: 'Manage Menu',
  icon: Icons.menu_book,
);

final QuickLinks manageOrders = QuickLinks(
  id: 1,
  name: 'Manage\nOrders',
  desc: 'Manage Orders',
  icon: Icons.shopping_basket_rounded,
);

final QuickLinks orderSettings = QuickLinks(
  id: 2,
  name: 'Order\nSettings',
  desc: 'Order Settings',
  icon: Icons.settings,
);

final QuickLinks payoutInfo = QuickLinks(
  id: 3,
  name: 'Payout\nInfo',
  desc: 'Payout Info',
  icon: Icons.credit_card,
);

final QuickLinks manageDelivery = QuickLinks(
  id: 4,
  name: 'Manage\nDelivery',
  desc: 'Manage Delivery',
  icon: Icons.access_time_filled,
);

final QuickLinks manageNotifications = QuickLinks(
  id: 5,
  name: 'Manage\nNotifications',
  desc: 'Manage Notifications',
  icon: Icons.notifications_rounded,
);

List<QuickLinks> quickLinks = [
  manageMenu,
  manageOrders,
  orderSettings,
  payoutInfo,
  manageDelivery,
  manageNotifications
];
