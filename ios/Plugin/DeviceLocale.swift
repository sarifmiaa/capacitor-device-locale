import Foundation

@objc public class DeviceLocale: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
