//
//  NotifeeApiModule.m
//  RNNotifee
//
//  Created by Mike on 31/01/2020.
//  Copyright © 2020 Invertase. All rights reserved.
//

#import "NotifeeApiModule.h"
#import <NotifeeCore/Notifee.h>

@implementation NotifeeApiModule

#pragma mark - Module Setup

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue {
  return dispatch_get_main_queue();
}

- (id)init {
  if (self = [super init]) {
    [Notifee initialize:@"hello from RNNotifee"];
  }
  return self;
}

- (void)invalidate {
  // todo
}

- (NSArray<NSString *> *)supportedEvents {
  return @[@"app.notifee.notification.event"];
}

+ (BOOL)requiresMainQueueSetup {
  return YES;
}

# pragma mark - React Native Methods

RCT_EXPORT_METHOD(cancelNotification:
  (NSString *) notificationId
    :(RCTPromiseResolveBlock) resolve
    :(RCTPromiseRejectBlock) reject
) {
    [Notifee cancelNotification:notificationId withBlock:^(NSError * _Nullable error) {
        if (error != nil) {
          reject(@"todo", @"todo", error);
        } else {
          resolve([NSNull null]);
        }
    }];
}

RCT_EXPORT_METHOD(displayNotification:
  (NSDictionary *) notification
    :(RCTPromiseResolveBlock) resolve
    :(RCTPromiseRejectBlock) reject
) {
    [Notifee displayNotification:notification withBlock:^(NSError * _Nullable error) {
        if (error != nil) {
          reject(@"todo", @"todo", error);
        } else {
          resolve([NSNull null]);
        }
    }];
}

RCT_EXPORT_METHOD(requestPermission:
  (NSDictionary *) permissions
    :(RCTPromiseResolveBlock) resolve
    :(RCTPromiseRejectBlock) reject
) {
    [Notifee requestPermission:permissions withBlock:^(NSError * _Nullable error, BOOL granted) {
        if (error != nil) {
          reject(@"todo", @"todo", error);
        } else {
          resolve(@(granted));
        }
    }];
}

@end
