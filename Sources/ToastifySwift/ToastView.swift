
import SwiftUI

struct ToastView: View {
    let toast: ToastModel

    var body: some View {
        HStack(spacing: 10) {
            if !toast.icon.isEmpty {
                Image(systemName: toast.icon)
                    .foregroundColor(.white)
            }
            Text(toast.message)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(toast.backgroundColor)
        .background(toast.backgroundColor.opacity(0.8))
        .cornerRadius(16)
        .shadow(radius: 6)
        .padding(.horizontal, 20)
    }
}

extension View {
    public func toastify(using manager: ToastManager) -> some View {
        ZStack {
            self
            if let toast = manager.currentToast {
                VStack {
                    Spacer()
                    ToastView(toast: toast)
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                        .animation(.easeInOut, value: toast.id)
                }
                .padding(.bottom, 50)
            }
        }
    }
}
