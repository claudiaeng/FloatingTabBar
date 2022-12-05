import SwiftUI

@available(iOS 13.0, *)
struct ContentView: View {

    @State var items: [BottomBarItem] = [
        BottomBarItem(icon: "cube", color: Color.iconColor),
        BottomBarItem(icon: "bookmark", color: Color.iconColor),
        BottomBarItem(icon: "magnifyingglass", color: Color.iconColor),
        BottomBarItem(icon: "rectangle.stack", color: Color.iconColor),
        BottomBarItem(icon: "person", color: Color.iconColor)
    ]
    
    @State public var selectedIndex: Int = 0
    
    let viewList = [AnyView(ScrollingView(test: false)),
                    AnyView(ScrollingView(test: true)),
                    AnyView(ScrollingView(test: false)),
                    AnyView(ScrollingView(test: true)),
                    AnyView(ScrollingView(test: false)),]
    
    
    var body: some View {
        

        ZStack {
            
            NavigationView {
            viewList[selectedIndex]
            }
            
            VStack {
                Spacer()
                ZStack {
                    BottomBar(selectedIndex: $selectedIndex, items: $items)
                        .cornerRadius(20)
                        .shadow(color: Color.darkTextColorMain.opacity(0.1), radius: 10,
                                x: 10,
                                y: 5)
                }.padding(EdgeInsets(top: 0,
                                     leading: 40,
                                     bottom: -10,
                                     trailing: 40))
                
            }
        }
    }
}

@available(iOS 13.0.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
