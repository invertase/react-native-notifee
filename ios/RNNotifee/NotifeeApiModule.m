//
//  NotifeeApiModule.m
//  RNNotifee
//
//  Created by Mike on 31/01/2020.
//  Copyright © 2020 Invertase. All rights reserved.
//

#import "NotifeeApiModule.h"
#import <NotifeeCore/Notifee.h>

@implementation NotifeeApiModule {
  bool hasListeners;
}

#pragma mark - Module Setup

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

- (id)init {
  if (self = [super init]) {
    // TODO config
    [Notifee initialize:@"hello from RNNotifee"];
    [self.bridge enqueueJSCall:@"Notifee" method:@"__handleNativeIOSEvent" args:@[@{@"foo": @"bar"}] completion:NULL];
  }
  return self;
}

- (void)invalidate {
  // todo
}

- (NSArray<NSString *> *)supportedEvents {
  return @[@"app.notifee.notification.event"];
}

// called when this module's first listener is added.
- (void)startObserving {
  [[NSNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(UNUNC_willPresentNotification:)
             name:kNotifeeWillPresentNotification
           object:nil
  ];
  [[NSNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(UNUNC_didReceiveNotificationResponse:)
             name:kNotifeeDidReceiveNotificationResponse
           object:nil
  ];
  [[NSNotificationCenter defaultCenter]
      addObserver:self
         selector:@selector(UNUNC_openSettingsForNotification:)
             name:kNotifeeOpenSettingsForNotification
           object:nil
  ];
  hasListeners = YES;
}

// called when this module's last listener is removed, or on dealloc.
- (void)stopObserving {
  [[NSNotificationCenter defaultCenter] removeObserver:self name:kNotifeeWillPresentNotification object:nil];
  [[NSNotificationCenter defaultCenter] removeObserver:self name:kNotifeeDidReceiveNotificationResponse object:nil];
  [[NSNotificationCenter defaultCenter] removeObserver:self name:kNotifeeOpenSettingsForNotification object:nil];
  hasListeners = NO;
}

+ (BOOL)requiresMainQueueSetup {
  return YES;
}

# pragma mark - Events

- (void)UNUNC_willPresentNotification:(NSNotification *)notification {
  if (hasListeners) {
    [self sendEventWithName:@"app.notifee.notification.event" body:@{
        @"type": @-1,
        @"detail": @{
            @"notification": ((UNNotification *) notification.userInfo[@"notification"]).request.content.userInfo[kNotifeeUserInfoNotification],
        }
    }];
  }
}

- (void)UNUNC_didReceiveNotificationResponse:(NSNotification *)notification {
  if (hasListeners) {
    [self sendEventWithName:@"app.notifee.notification.event" body:@{@"name": eventName}];
  }
}

- (void)UNUNC_openSettingsForNotification:(NSNotification *)notification {
  if (hasListeners) {
    [self sendEventWithName:@"app.notifee.notification.event" body:@{@"name": eventName}];
  }
}

# pragma mark - React Native Methods

RCT_EXPORT_METHOD(cancelNotification:
  (NSString *) notificationId
      resolve:
      (RCTPromiseResolveBlock) resolve
      reject:
      (RCTPromiseRejectBlock) reject
) {
  [[Notifee instance] cancelNotification:notificationId withBlock:^(NSError *_Nullable error) {
    [self resolve:resolve orReject:reject promiseWithError:error orResult:nil];
  }];
}

RCT_EXPORT_METHOD(displayNotification:
  (NSDictionary *) notification
      resolve:
      (RCTPromiseResolveBlock) resolve
      reject:
      (RCTPromiseRejectBlock) reject
) {
  [[Notifee instance] displayNotification:notification withBlock:^(NSError *_Nullable error) {
    [self resolve:resolve orReject:reject promiseWithError:error orResult:nil];
  }];
}

RCT_EXPORT_METHOD(requestPermission:
  (NSDictionary *) permissions
      resolve:
      (RCTPromiseResolveBlock) resolve
      reject:
      (RCTPromiseRejectBlock) reject
) {
  [[Notifee instance] requestPermission:permissions withBlock:^(NSError *_Nullable error, NSDictionary *settings) {
    [self resolve:resolve orReject:reject promiseWithError:error orResult:settings];
  }];
}

RCT_EXPORT_METHOD(getNotificationSettings:
  (RCTPromiseResolveBlock) resolve
      reject:
      (RCTPromiseRejectBlock) reject
) {
  [[Notifee instance] getNotificationSettings:^(NSError *_Nullable error, NSDictionary *settings) {
    [self resolve:resolve orReject:reject promiseWithError:error orResult:settings];
  }];
}

RCT_EXPORT_METHOD(getNotificationCategories:
  (RCTPromiseResolveBlock) resolve
      reject:
      (RCTPromiseRejectBlock) reject
) {
  [[Notifee instance] getNotificationCategoriesWithBlock:^(NSError *_Nullable error, NSArray<NSDictionary *> *categories) {
    [self resolve:resolve orReject:reject promiseWithError:error orResult:categories];
  }];
}

RCT_EXPORT_METHOD(setNotificationCategories:
  (NSArray<NSDictionary *> *) categories
      resolve:
      (RCTPromiseResolveBlock) resolve
      reject:
      (RCTPromiseRejectBlock) reject
) {
  [[Notifee instance] setNotificationCategories:categories withBlock:^(NSError *_Nullable error) {
    [self resolve:resolve orReject:reject promiseWithError:error orResult:nil];
  }];
}

# pragma mark - Internals

- (void)resolve:(RCTPromiseResolveBlock)resolve orReject:(RCTPromiseRejectBlock)reject promiseWithError:(NSError *_Nullable)error orResult:(id _Nullable)result {
  if (error != nil) {
    // TODO codes & messages
    reject(@"todo", @"todo", error);
  } else {
    resolve(result);
  }
}


@end
