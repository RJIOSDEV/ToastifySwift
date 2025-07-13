
import SwiftUI

public struct AlertActionButton {
    public let title: String
    public let background: Color
    public let action: () -> Void

    public init(title: String, background: Color = .blue, action: @escaping () -> Void) {
        self.title = title
        self.background = background
        self.action = action
    }
}

struct CustomAlertView: View {
    let title: String
    let message: String
    let primary: AlertActionButton
    let secondary: AlertActionButton

    var body: some View {
        VStack(spacing: 16) {
            Text(title)
                .font(.headline)
                .padding(.top)
            Text(message)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            HStack(spacing: 12) {
                Button(action: secondary.action) {
                    Text(secondary.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(secondary.background)
                        .cornerRadius(10)
                }
                Button(action: primary.action) {
                    Text(primary.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(primary.background)
                        .cornerRadius(10)
                }
            }
            .padding([.horizontal, .bottom])
        }
        .background(
            Color(
                #if os(iOS)
                UIColor.systemBackground
                #elseif os(macOS)
                NSColor.windowBackgroundColor
                #else
                .white
                #endif
            )
        )

        .cornerRadius(16)
        .shadow(radius: 10)
        .padding(.horizontal, 40)
    }
}

struct CustomAlertModifier: ViewModifier {
    @Binding var isPresented: Bool
    let title: String
    let message: String
    let primary: AlertActionButton
    let secondary: AlertActionButton

    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresented {
                Color.black.opacity(0.4).ignoresSafeArea()
                CustomAlertView(title: title, message: message, primary: primary, secondary: secondary)
                    .transition(.scale)
                    .animation(.easeInOut, value: isPresented)
            }
        }
    }
}

extension View {
    public func customAlert(
        isPresented: Binding<Bool>,
        title: String,
        message: String,
        primary: AlertActionButton,
        secondary: AlertActionButton
    ) -> some View {
        self.modifier(CustomAlertModifier(isPresented: isPresented, title: title, message: message, primary: primary, secondary: secondary))
    }
}
