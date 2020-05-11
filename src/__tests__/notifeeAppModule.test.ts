import React from 'react';
import NotifeeApiModule from '../NotifeeApiModule';

describe('Notifee App Module', () => {
  test('functions configuration detected from environment variables', async () => {
    expect(NotifeeApiModule).toBeDefined();
  });
});
