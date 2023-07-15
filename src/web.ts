import { WebPlugin } from '@capacitor/core';

import type { DeviceLocalePlugin } from './definitions';

export class DeviceLocaleWeb extends WebPlugin implements DeviceLocalePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
