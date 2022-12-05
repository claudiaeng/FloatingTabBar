import SwiftUI

@available(iOS 13.0, *)
@available(OSX 10.15, *)
public struct BottomBarItem {
    public let icon: String
    public let color: Color
    public var completion: () async -> Void = {}
    
    public init(icon: String, color: Color) {
        self.icon = icon
        self.color = color
    }
    
    public init(icon: String, color: Color, completion: @escaping () async -> Void) {
        self.icon = icon
        self.color = color
        self.completion = completion
    }
}

