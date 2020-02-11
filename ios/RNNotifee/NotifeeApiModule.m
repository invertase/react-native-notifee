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
    // TODO config
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
