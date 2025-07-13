import SwiftUI

public struct ToastModel: Identifiable {
    public var id = UUID()
    public var message: String
    public var icon: String
    public var backgroundColor: Color
    public var duration: TimeInterval

    public init(
        message: String,
        icon: String = "info.circle",
        backgroundColor: Color = .black,
        duration: TimeInterval = 2.0
    ) {
        self.message = message
        self.icon = icon
        self.backgroundColor = backgroundColor
        self.duration = duration
    }
}
