package com.sarif.capacitor.device.locale;

import java.util.Currency;
import java.util.Locale;
import java.util.TimeZone;

public class DeviceLocale {
    /**
     * Returns the region code of the current locale.
     *
     * @return The region code.
     */
    public String getRegionCode() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.R) {
            return Locale.getDefault(Locale.Category.FORMAT).getCountry();
        }

        return Locale.getDefault().getCountry();
    }

    /**
     * Returns the country name of the current locale.
     *
     * @return The country name.
     */
    public String getCountry() {
        Locale currentLocale = Locale.getDefault();
        String regionCode = getRegionCode();
        if (regionCode != null) {
            String countryName = currentLocale.getDisplayCountry(new Locale("", regionCode));
            return countryName;
        }

        return null;
    }

    /**
     * Returns the language code of the current locale.
     *
     * @return The language code.
     */
    public String getLanguageCode() {
        return Locale.getDefault().getLanguage();
    }

    /**
     * Returns the language of the current locale.
     *
     * @return The language.
     */
    public String getLanguage() {
        Locale currentLocale = Locale.getDefault();
        String languageCode = getLanguageCode();
        if (languageCode != null) {
            String language = currentLocale.getDisplayLanguage(new Locale(languageCode));
            return language;
        }

        return null;
    }

    /**
     * Returns the symbol of the currency used in the current locale.
     *
     * @return The currency symbol.
     */
    public String getCurrencySymbol() {
        return Currency.getInstance(Locale.getDefault()).getSymbol();
    }

    /**
     * Returns the ISO 4217 code of the currency used in the current locale.
     *
     * @return The currency code.
     */
    public String getCurrencyCode() {
        return Currency.getInstance(Locale.getDefault()).getCurrencyCode();
    }

    /**
     * Returns the name of the currency used in the current locale.
     *
     * @return The currency name.
     */
    public String getCurrencyName() {
        Locale currentLocale = Locale.getDefault();
        String currencyCode = getCurrencyCode();
        if (currencyCode != null) {
            String currencyName = currentLocale.getDisplayLanguage(new Locale("", currencyCode));
            return currencyName;
        }

        return null;
    }

    /**
     * Returns the ID of the time zone used in the current locale.
     *
     * @return The time zone ID.
     */
    public String getTimeZone() {
        return TimeZone.getDefault().getID();
    }
}
