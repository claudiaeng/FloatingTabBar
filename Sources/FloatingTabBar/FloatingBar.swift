import SwiftUI

@available(iOS 13.0, *)
@available(OSX 10.15, *)
public struct BottomBar : View {
    @Binding public var selectedIndex: Int

    @Binding public var items: [BottomBarItem]

    public init(selectedIndex: Binding<Int>, items: Binding<[BottomBarItem]>) {
        self._selectedIndex = selectedIndex
        self._items = items
    }

    func itemView(at index: Int) -> some View {
        Button(action: {
            withAnimation { self.selectedIndex = index }
            Task {
                await items[index].completion()
            }
        }) {
            BottomBarItemView(isSelected: index == selectedIndex, item: items[index])
        }
    }

    public var body: some View {

        ZStack {
            BlurView(style: .light).frame(height: 60)

            HStack(alignment: .center) {
                ForEach(0..<items.count) { index in
                    self.itemView(at: index)

                    if index != self.items.count-1 {
                        Spacer()
                    }
                }
            }.padding([.horizontal]).animation(.default).padding(.bottom,0).padding(.top,0)
        }
    }
}

#if DEBUG
@available(iOS 13.0.0, *)
@available(OSX 10.15.0, *)
struct BottomBar_Previews : PreviewProvider {
    @State static var items: [BottomBarItem] = [
        BottomBarItem(icon: "house.fill", color: .purple),
        BottomBarItem(icon: "heart", color: .pink),
        BottomBarItem(icon: "magnifyingglass", color: .orange),
        BottomBarItem(icon: "magnifyingglass", color: .orange),
        BottomBarItem(icon: "person.fill", color: .blue)
    ]
    static var previews: some View {
        BottomBar(selectedIndex: .constant(0), items: BottomBar_Previews.$items)
    }
}
#endif
