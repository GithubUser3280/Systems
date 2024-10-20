import SwiftUI

struct BackgroundView: View {
	@Binding var backgroundColor: AccentColor

    var body: some View {
		LinearGradient(colors: backgroundColor.gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
			.ignoresSafeArea()
    }
}

#Preview {
	BackgroundView(backgroundColor: Binding<AccentColor>.constant(AccentColor.gray))
}
