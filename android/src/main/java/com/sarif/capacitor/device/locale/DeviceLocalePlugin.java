package com.sarif.capacitor.device.locale;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "DeviceLocale")
public class DeviceLocalePlugin extends Plugin {

    private DeviceLocale implementation = new DeviceLocale();

    /**
     * Retrieves the device's locale information and returns it as a JSObject.
     *
     * @param call The plugin call object.
     */
    @PluginMethod
    public void getDeviceLocale(PluginCall call) {
        JSObject response = new JSObject();
        
        response.put("regionCode", implementation.getRegionCode());
        response.put("country", implementation.getCountry());
        response.put("languageCode", implementation.getLanguageCode());
        response.put("language", implementation.getLanguage());
        response.put("currencySymbol", implementation.getCurrencySymbol());
        response.put("currencyCode", implementation.getCurrencyCode());
        response.put("currencyName", implementation.getCurrencyName());
        response.put("timeZone", implementation.getTimeZone());

        call.resolve(response);
    }
}
