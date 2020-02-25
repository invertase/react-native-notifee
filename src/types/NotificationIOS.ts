/* eslint-disable @typescript-eslint/interface-name-prefix */

/*
 * Copyright (c) 2016-present Invertase Limited
 */

export interface NotificationIOS {
  /**
   * @platform ios iOS 10+
   */
  attachments?: IOSAttachment[];

  badgeCount?: number;

  categories?: string[];

  groupId?: string;

  groupMessage?: string;

  groupCount?: number;

  launchImage?: string;

  sound?: string;
}

export interface IOSPermissions {
  alert?: boolean; // true
  badge?: boolean; // true
  sound?: boolean; // true
  carPlay?: boolean; // true
  provisional?: boolean; // false
  announcement?: boolean; // false
  inAppNotificationSettings?: boolean; // true
}

export enum IOSAuthorizationStatus {
  NOT_DETERMINED = -1,
  DENIED = 0,
  AUTHORIZED = 1,
  PROVISIONAL = 2,
}

export enum IOSShowPreviewsSetting {
  NOT_SUPPORTED = -1,
  NEVER = 0,
  ALWAYS = 1,
  WHEN_AUTHENTICATED = 2,
}

export enum IOSNotificationSetting {
  NOT_SUPPORTED = -1,
  DISABLED = 0,
  ENABLED = 1,
}

export interface IOSNotificationSettings {
  alert: IOSNotificationSetting;
  badge: IOSNotificationSetting;
  criticalAlert: IOSNotificationSetting;
  showPreviews: IOSShowPreviewsSetting;
  sound: IOSNotificationSetting;
  carPlay: IOSNotificationSetting;
  lockScreen: IOSNotificationSetting;
  announcement: IOSNotificationSetting;
  notificationCenter: IOSNotificationSetting;
  inAppNotificationSettings: IOSNotificationSetting;
  authorizationStatus: IOSAuthorizationStatus;
}

export enum IOSIntentIdentifier {
  START_AUDIO_CALL = 0,

  START_VIDEO_CALL = 1,

  SEARCH_CALL_HISTORY = 2,

  SET_AUDIO_SOURCE_IN_CAR = 3,

  SET_CLIMATE_SETTINGS_IN_CAR = 4,

  SET_DEFROSTER_SETTINGS_IN_CAR = 5,

  SET_SEAT_SETTINGS_IN_CAR = 6,

  SET_PROFILE_IN_CAR = 7,

  SAVE_PROFILE_IN_CAR = 8,

  START_WORKOUT = 9,

  PAUSE_WORKOUT = 10,

  END_WORKOUT = 11,

  CANCEL_WORKOUT = 12,

  RESUME_WORKOUT = 13,

  SET_RADIO_STATION = 14,

  SEND_MESSAGE = 15,

  SEARCH_FOR_MESSAGES = 16,

  SET_MESSAGE_ATTRIBUTE = 17,

  SEND_PAYMENT = 18,

  REQUEST_PAYMENT = 19,

  SEARCH_FOR_PHOTOS = 20,

  START_PHOTO_PLAYBACK = 21,

  LIST_RIDE_OPTIONS = 22,

  REQUEST_RIDE = 23,

  GET_RIDE_STATUS = 24,
}

export interface IOSCategory {
  id: string;
  summaryFormat?: string;
  allowInCarPlay?: boolean;
  allowAnnouncement?: boolean;
  hiddenPreviewsShowTitle?: boolean;
  hiddenPreviewsShowSubtitle?: boolean;
  hiddenPreviewsBodyPlaceholder?: string;
  intentIdentifiers?: IOSIntentIdentifier[];
  actions: IOSAction[];
}

export interface IOSAction {
  id: string;
  title: string;
  input?: true | IOSInput;
  options?: IOSActionOptions;
}

export interface IOSInput {
  /**
   * Overrides the default button text "Send", next to the input box.
   */
  buttonText?: string;

  /**
   * The placeholder text displayed in the text input field for this action.
   */
  placeholderText?: string;
}

export interface IOSActionOptions {
  /**
   * Makes the action red, indicating that the action is destructive.
   */
  destructive?: boolean; // false

  /**
   * Whether this action should cause the application to launch in the foreground.
   */
  launchApp?: boolean; // false

  /**
   * Whether this action should require unlocking before being performed.
   */
  authentication?: boolean; // false
}

export interface IOSAttachment {
  identifier: string;
  url: string;
  options?: IOSAttachmentOptions;
}

export interface IOSAttachmentOptions {
  typeHint: string;
  thumbnailHidden?: boolean;
  thumbnailClippingRect?: object;
  thumbnailTime: number;
}
