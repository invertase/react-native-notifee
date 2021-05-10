import {Notification} from '@notifee/react-native';

type NotificationItems = {
  basic: Notification;
};

export const notifications: NotificationItems = {
  basic: {
    title: 'hello',
    body: 'world',
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
};
