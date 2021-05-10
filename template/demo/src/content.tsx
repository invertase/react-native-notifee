import React from 'react';
import {View, ViewStyle, TextStyle, Button, StyleSheet} from 'react-native';
import notifee from '@notifee/react-native';

import {notifications} from './utils/notifications';
import {triggers} from './utils/triggers';

type Props = {};

export const Content: React.FC<Props> = () => {
  /* Change the notification payload */
  const notification = notifications.basic;

  /* Change the trigger payload */
  const trigger = triggers.timestamp();

  const onDisplayNotificationPress = async () => {
    // Create a channel
    await notifee.createChannel({
      id: notification.android?.channelId || 'default',
      name: notification.android?.channelId || 'default',
    });
    await notifee.displayNotification(notification);
  };

  const onTriggerNotificationPress = async () => {
    await notifee.createTriggerNotification(notification, trigger);
    console.log('Trigger created: ', notification, trigger);
  };

  const onAPIPress = async () => {
    /* Change the API function to test */
    const result = await notifee.cancelAllNotifications();

    console.log('onAPIPress -> ', result != null ? result : 'API Call Success');
  };

  return (
    <View style={styles.container}>
      <View style={styles.content}>
        <Button
          title={'Display Notification'}
          onPress={onDisplayNotificationPress}
        />
        <Button
          title={'Create Trigger Notification'}
          onPress={onTriggerNotificationPress}
        />
        <Button title={'Test Notifee API Action'} onPress={onAPIPress} />
      </View>
    </View>
  );
};

export default {Content};

const styles = StyleSheet.create({
  container: {
    flex: 0.6,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
    marginTop: 50,
  },
  content: {
    flex: 1,
  },
});
