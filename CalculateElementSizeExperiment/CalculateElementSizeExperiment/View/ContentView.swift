import SwiftUI

struct ContentView: View {
    @State var textSize: CGSize = .zero
    let text: String

    var body: some View {
        VStack {
            Text(text)
                .font(.body)
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
