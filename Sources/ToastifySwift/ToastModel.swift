
import SwiftUI

public struct ToastModel: Identifiable {
    public var id = UUID()
    public var message: String
    public var icon: String = "info.circle"
    public var backgroundColor: Color = .black
    public var duration: TimeInterval = 2.0
}
