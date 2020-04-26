import SwiftUI

//TODO:
@available(iOS 13.0, *)
struct ScrollingView: View {
    
    var test: Bool
    
    init(test: Bool) {
        self.test = test
    }
    
    var body: some View {
        ScrollView {
            VStack {
                
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 0...500)).background(Color.random)
                
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 50...500)).background(Color.random)
                
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 50...500)).background(Color.random)
                
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 50...500)).background(Color.random)
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 50...500)).background(Color.random)
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 50...500)).background(Color.random)
                HStack {
                        Text("")
                    }.frame(width: UIScreen.main.bounds.width, height:  .random(in: 50...500)).background(Color.random)

                Spacer()
            }
        }.background(Color.init(UIColor.gray).opacity(0.0)).edgesIgnoringSafeArea([.all])
    }
}

@available(iOS 13.0, *)
struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView(test: true)
    }
}
