import SwiftUI

let light = 1.0
let bright = 0.75
let regular = 0.5
let dim = 0.25
let dark = 0.0

enum AccentColor: CaseIterable {
	case gray
	case red
	case green
	case blue
	case yellow
	case cyan
	case pink

	var color: Color {
		switch self {
			case .gray: return Color(red: regular, green: regular, blue: regular)
			case .red: return Color(red: bright, green: dim, blue: dim)
			case .green: return Color(red: dim, green: bright, blue: dim)
			case .blue: return Color(red: dim, green: dim, blue: bright)
			case .yellow: return Color(red: bright, green: bright, blue: dim)
			case .cyan: return Color(red: dim, green: bright, blue: bright)
			case .pink: return Color(red: bright, green: dim, blue: bright)
		}
	}

	var saturated: Color {
		switch self {
			case .gray: return Color(red: bright, green: bright, blue: bright)
			case .red: return Color(red: light, green: dim, blue: dim)
			case .green: return Color(red: dim, green: light, blue: dim)
			case .blue: return Color(red: dim, green: dim, blue: light)
			case .yellow: return Color(red: light, green: light, blue: dim)
			case .cyan: return Color(red: dim, green: light, blue: light)
			case .pink: return Color(red: light, green: dim, blue: light)
		}
	}

	var unsaturated: Color {
		switch self {
			case .gray: return Color(red: dim, green: dim, blue: dim)
			case .red: return Color(red: regular, green: dim, blue: dim)
			case .green: return Color(red: dim, green: regular, blue: dim)
			case .blue: return Color(red: dim, green: dim, blue: regular)
			case .yellow: return Color(red: regular, green: regular, blue: dim)
			case .cyan: return Color(red: dim, green: regular, blue: regular)
			case .pink: return Color(red: regular, green: dim, blue: regular)
		}
	}

	var gradient: [Color] {
		return [self.saturated, self.unsaturated]
	}
}
