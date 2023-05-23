import SwiftUI

struct ContentView: View {
    @State var textSize: CGSize = .zero

    var body: some View {
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                .background {
                    GeometryReader { geometry in
                        Color.clear
                            .onAppear {
                                textSize = geometry.size
                            }
                    }
                }

            Rectangle()
                .fill(Color.yellow)
                .frame(
                    width: textSize.width,
                    height: textSize.height
                )
        }
        .padding()
    }
}
