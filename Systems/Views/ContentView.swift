import SwiftUI

struct ContentView: View {
	@State private var backgroundColor: AccentColor = .gray

    var body: some View {
		ZStack {
			BackgroundView(backgroundColor: $backgroundColor)
		}
    }
}

#Preview {
    ContentView()
}
