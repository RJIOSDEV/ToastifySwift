
import Foundation
import SwiftUI

public class ToastManager: ObservableObject {
    @Published public var currentToast: ToastModel?

    public init() {}

    public func show(toast: ToastModel) {
        self.currentToast = toast
        DispatchQueue.main.asyncAfter(deadline: .now() + toast.duration) {
            self.currentToast = nil
        }
    }
}
