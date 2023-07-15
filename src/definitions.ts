interface DeviceLocale {
  /**
   * The region code of the device locale.
   * Example: "US"
   */
  regionCode: string;

  /**
   * The country of the device locale.
   * Example: "United States"
   */
  country: string;

  /**
   * The language code of the device locale.
   * Example: "en"
   */
  languageCode: string;

  /**
   * The language of the device locale.
   * Example: "English"
   */
  language: string;

  /**
   * The symbol used for the currency in the device locale.
   * Example: "$"
   */
  currencySymbol: string;

  /**
   * The currency code of the device locale.
   * Example: "USD"
   */
  currencyCode: string;

  /**
   * The name of the currency in the device locale.
   * Example: "US Dollar"
   */
  currencyName: string;

  /**
   * The timezone of the device locale.
   * Example: "America/New_York"
   */
  timezone: string;
}

/**
 * Device locale plugin.
 */
interface DeviceLocalePlugin {
  /**
   * Get the device locale.
   * @returns {Promise<DeviceLocale>} Returns a promise that resolves with the device locale.
   */
  getDeviceLocale(): Promise<DeviceLocale>;
}

export { DeviceLocale, DeviceLocalePlugin };
