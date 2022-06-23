import SwiftUI
import Charts

struct LineChartView: View {

	var body: some View {

		VStack {

			if #available(iOS 16.0, *) {

				Chart(seriesData) { series in
					ForEach(series.data) { element in
						LineMark(
							x: .value("Name", element.day),
							y: .value("Visitor", element.visitor)
						)
						.foregroundStyle(by: .value("Location", series.location))
						.symbol(by: .value("Location", series.location))

					}
				}

			} else {
				Text("Need iOS 16")
			}
		}
	}
}

struct LineChart_Previews: PreviewProvider {
	static var previews: some View {
		LineChartView()
			.frame(height: 400)
			.padding()
	}
}
