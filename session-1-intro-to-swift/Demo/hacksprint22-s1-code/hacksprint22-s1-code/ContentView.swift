import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("French Toast")
                .bold()
            Text("I")
            HStack {
                Text("really")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                Text("really")
                    .foregroundColor(Color.red)
                Text("really")
                    .italic()
            }
            Text("do!")
            Image("frenchtoast")
                .resizable()
                .scaledToFit()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
