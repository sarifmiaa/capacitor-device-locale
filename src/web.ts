import { WebPlugin } from '@capacitor/core';

import type { DeviceLocale, DeviceLocalePlugin } from './definitions';

export class DeviceLocaleWeb extends WebPlugin implements DeviceLocalePlugin {
  getDeviceLocale(): Promise<DeviceLocale> {
    throw new Error('Method not supported on web.');
  }
}
