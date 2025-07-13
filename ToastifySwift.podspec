Pod::Spec.new do |spec|
  spec.name             = "ToastifySwift"
  spec.version          = "1.0.3"
  spec.summary          = "Elegant SwiftUI library for customizable Toasts and Alerts."

  spec.description      = <<-DESC
ToastifySwift lets you show customizable toasts and alerts across iOS, macOS, watchOS, tvOS, and more using clean SwiftUI components.
DESC

  spec.homepage         = "https://github.com/RJIOSDEV/ToastifySwift"
  spec.license          = { :type => "MIT", :file => "LICENSE" }
  spec.author           = { "RJIOSDEV" => "rajandesai689@gmail.com" }

  spec.source           = { :git => "https://github.com/RJIOSDEV/ToastifySwift.git", :tag => "#{spec.version}" }

  spec.swift_version    = "5.9"

  spec.ios.deployment_target     = "14.0"
  spec.macos.deployment_target   = "11.0"
  # spec.watchos.deployment_target = "7.0"
  # spec.tvos.deployment_target    = "14.0"

  spec.source_files     = "Sources/ToastifySwift/**/*.{swift}"
  spec.framework        = "SwiftUI"
end
