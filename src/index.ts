import { registerPlugin } from '@capacitor/core';

import type { DeviceLocalePlugin } from './definitions';

const Device = registerPlugin<DeviceLocalePlugin>('DeviceLocale', {});

export * from './definitions';
export { Device };
