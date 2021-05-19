import {AndroidCategory, AndroidImportance, AndroidVisibility, Notification} from '@notifee/react-native';

type NotificationItems = {
  basic: Notification;
  fullScreen: Notification;
};

export const notifications: NotificationItems = {
  basic: {
    title: 'basic',
    body: 'notification',
    android: {
      channelId: 'default',
      pressAction: {
        id: 'default',
      },
    },
    ios: {
      sound: 'default',
    },
  },
  fullScreen: {
    title: 'full-screen',
    body: 'notification',
    android: {
      channelId: 'full-screen',
       // Recommended to set a category
      category: AndroidCategory.CALL,
      // Recommended to set importance to high
      importance: AndroidImportance.HIGH,
      visibility: AndroidVisibility.PUBLIC,
      sound: 'default',
      fullScreenAction: {
        id: 'default',
        // mainComponent: 'full-screen-main-component'
        launchActivity: 'com.example.CustomActivity',
      },
    },
    ios: {
      sound: 'default',
    },
  },
};
