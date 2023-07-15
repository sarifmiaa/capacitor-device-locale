# capacitor-device-locale

Get device locale information

## Install

```bash
npm install capacitor-device-locale
npx cap sync
```

## API

<docgen-index>

* [`getDeviceLocale()`](#getdevicelocale)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

Device locale plugin.

### getDeviceLocale()

```typescript
getDeviceLocale() => Promise<DeviceLocale>
```

Get the device locale.

**Returns:** <code>Promise&lt;<a href="#devicelocale">DeviceLocale</a>&gt;</code>

--------------------


### Interfaces


#### DeviceLocale

| Prop                 | Type                | Description                                                         |
| -------------------- | ------------------- | ------------------------------------------------------------------- |
| **`regionCode`**     | <code>string</code> | The region code of the device locale. Example: "US"                 |
| **`country`**        | <code>string</code> | The country of the device locale. Example: "United States"          |
| **`languageCode`**   | <code>string</code> | The language code of the device locale. Example: "en"               |
| **`language`**       | <code>string</code> | The language of the device locale. Example: "English"               |
| **`currencySymbol`** | <code>string</code> | The symbol used for the currency in the device locale. Example: "$" |
| **`currencyCode`**   | <code>string</code> | The currency code of the device locale. Example: "USD"              |
| **`currencyName`**   | <code>string</code> | The name of the currency in the device locale. Example: "US Dollar" |
| **`timezone`**       | <code>string</code> | The timezone of the device locale. Example: "America/New_York"      |

</docgen-api>
