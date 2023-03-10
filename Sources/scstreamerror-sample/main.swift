import Foundation
import ScreenCaptureKit

print("Hello, this is macOS", ProcessInfo.processInfo.operatingSystemVersionString)

@available(macOS 12.3, *)
func printStream() {
    print("SCStream", SCStream(filter: .init(), configuration: .init(), delegate: nil))
}

@available(macOS 12.3, *)
func printDomain() {
    // The following line triggers a linker error on macOS < 12.3
    print("SCStreamError.errorDomain:", SCStreamError.errorDomain)
}

if #available(macOS 12.3, *) {
    printStream()
    printDomain()
}
