import SwiftUI

@available(iOS 13.0, *)
public extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
    
    static let iconColor: Color = Color.black.opacity(0.65)
    static let deselectedColor: Color = Color.gray.opacity(0.8)
    static let backgroundColor: Color = Color.init(red: 228/255,
                                            green: 228/255,
                                            blue: 229/255)
    static let darkTextColorMain: Color = Color.init(red: 1/255,
                                              green: 0/255,
                                              blue: 25/255)
    static let dividerColor: Color = Color.init(red: 200/255,
                                         green: 200/255,
                                         blue: 200/255).opacity(0.2)
}

