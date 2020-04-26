import SwiftUI

@available(iOS 13.0.0, *)
@available(OSX 10.15, *)
public struct BottomBarItemView: View {
    public let isSelected: Bool
    public let item: BottomBarItem
    
    public var body: some View {
        HStack {
            Image(systemName: item.icon)
                .imageScale(.large)
                .blendMode(.plusDarker)
                .foregroundColor(isSelected ? item.color : Color.deselectedColor)
                
        }
        .padding()
        .background(
            Capsule()
                .fill(isSelected ? Color.gray.opacity(0.35) :  item.color.opacity(0.0))
        )
    }
}
