import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(DeviceLocalePlugin)
public class DeviceLocalePlugin: CAPPlugin {
    private let implementation = DeviceLocale()

    /**
     * Get the device locale
     */
    @objc func getDeviceLocale(_ call: CAPPluginCall) {
        let regionCode = implementation.getRegionCode() ?? ""
        let country = implementation.getCountry() ?? ""
        let languageCode = implementation.getLanguageCode() ?? ""
        let language = implementation.getLanguage() ?? ""
        let currencySymbol = implementation.getCurrencySymbol() ?? ""
        let currencyCode = implementation.getCurrencyCode() ?? ""
        let currencyName = implementation.getCurrencyName() ?? ""
        let timeZone = implementation.getTimeZone() ?? ""
        
        call.resolve([
            "regionCode": regionCode,
            "country": country,
            "languageCode": languageCode,
            "language": language,
            "currencySymbol": currencySymbol,
            "currencyCode": currencyCode,
            "currencyName": currencyName,
            "timeZone": timeZone
        ])
    }
}
