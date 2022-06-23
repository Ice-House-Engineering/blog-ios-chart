import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
			VStack {
				BarChartView().padding()
				LineChartView().padding()
			}
        }
    }
}
