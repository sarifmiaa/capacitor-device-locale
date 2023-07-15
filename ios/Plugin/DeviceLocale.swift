import Foundation

@objc public class DeviceLocale: NSObject {
    /**
     Retrieves the region code of the current locale.
     
     - Returns: The region code as a string or `nil` if it is not available.
     */
    @objc public func getRegionCode() -> String? {
        if #available(iOS 16, *) {
            return Locale.current.region?.identifier ?? nil
        }
        
        return Locale.current.regionCode
    }
    
    /**
     Retrieves the country name corresponding to the current locale.
     
     - Returns: The country name as a string or `nil` if it is not available.
     */
    @objc public func getCountry() -> String? {
        let currentLocale = Locale.current
        if let countryName = currentLocale.localizedString(forRegionCode: getRegionCode() ?? "") {
            return countryName
        }
        
        return nil
    }
    
    /**
     Retrieves the language code of the current locale.
     
     - Returns: The language code as a string or `nil` if it is not available.
     */
    @objc public func getLanguageCode() -> String? {
        if #available(iOS 16, *) {
            return Locale.current.language.languageCode?.identifier ?? nil
        }
        
        return Locale.current.languageCode
    }
    
    /**
     Retrieves the language corresponding to the current locale.
     
     - Returns: The language as a string or `nil` if it is not available.
     */
    @objc public func getLanguage() -> String? {
        let currentLocale = Locale.current
        if let language = currentLocale.localizedString(forLanguageCode: getLanguageCode() ?? "") {
            return language
        }
        
        return nil
    }
    
    /**
     Retrieves the currency symbol of the current locale.
     
     - Returns: The currency symbol as a string or `nil` if it is not available.
     */
    @objc public func getCurrencySymbol() -> String? {
        return Locale.current.currencySymbol
    }
    
    /**
     Retrieves the currency code of the current locale.
     
     - Returns: The currency code as a string or `nil` if it is not available.
     */
    @objc public func getCurrencyCode() -> String? {
        if #available(iOS 16, *) {
            return Locale.current.currency?.identifier
        } else {
            return Locale.current.currencyCode
        }
    }
    
    /**
     Retrieves the currency name corresponding to the current locale.
     
     - Returns: The currency name as a string or `nil` if it is not available.
     */
    @objc public func getCurrencyName() -> String? {
        let currentLocale = Locale.current
        if let currencyName = currentLocale.localizedString(forCurrencyCode: getCurrencyCode() ?? "") {
            return currencyName
        }
        
        return nil
    }
    
    /**
     Retrieves the time zone identifier of the current locale.
     
     - Returns: The time zone identifier as a string or `nil` if it is not available.
     */
    @objc public func getTimeZone() -> String? {
        return String(TimeZone.current.identifier)
    }
}
