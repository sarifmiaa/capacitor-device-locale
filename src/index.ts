import { registerPlugin } from '@capacitor/core';

import type { DeviceLocalePlugin } from './definitions';

const DeviceLocale = registerPlugin<DeviceLocalePlugin>('DeviceLocale', {
  web: () => import('./web').then(m => new m.DeviceLocaleWeb()),
});

export * from './definitions';
export { DeviceLocale };
