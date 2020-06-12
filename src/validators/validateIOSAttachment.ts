/*
 * Copyright (c) 2016-present Invertase Limited
 */

import { objectHasProperty, isBoolean, isObject, isString, isUndefined, isNumber } from '../utils';

import { IOSNotificationAttachment } from '../types/NotificationIOS';

export default function validateIOSAttachment(
  attachment: IOSNotificationAttachment,
): IOSNotificationAttachment {
  if (!isObject(attachment)) {
    throw new Error("'attachment' expected an object value.");
  }

  if (!isString(attachment.id) || !attachment.id) {
    throw new Error("'attachment.id' expected a string value.");
  }

  const out: IOSNotificationAttachment = {
    id: attachment.id,
    url: attachment.url,
  };

  if (objectHasProperty(attachment, 'typeHint') && !isUndefined(attachment.typeHint)) {
    if (!isString(attachment.typeHint) || !attachment.typeHint) {
      throw new Error("'attachment.typeHint' expected a string value.");
    }

    out.typeHint = attachment.typeHint;
  }

  if (
    objectHasProperty(attachment, 'thumbnailClippingRect') &&
    !isUndefined(attachment.thumbnailClippingRect)
  ) {
    if (!isObject(attachment.thumbnailClippingRect)) {
      throw new Error("'attachment.thumbnailClippingRect' must be a object value if specified.");
    } else {
      out.thumbnailClippingRect = attachment.thumbnailClippingRect;
    }
  }

  if (
    objectHasProperty(attachment, 'thumbnailHidden') &&
    !isUndefined(attachment.thumbnailHidden)
  ) {
    if (!isBoolean(attachment.thumbnailHidden)) {
      throw new Error("'attachment.thumbnailHidden' must be a boolean value if specified.");
    } else {
      out.thumbnailHidden = attachment.thumbnailHidden;
    }
  }

  if (objectHasProperty(attachment, 'thumbnailTime') && !isUndefined(attachment.thumbnailTime)) {
    if (!isNumber(attachment.thumbnailTime)) {
      throw new Error("'attachment.thumbnailTime' must be a number value if specified.");
    } else {
      out.thumbnailTime = attachment.thumbnailTime;
    }
  }

  return out;
}
