export interface DeviceLocalePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
