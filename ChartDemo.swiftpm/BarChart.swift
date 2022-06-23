import SwiftUI
import Charts

struct BarChartView: View {

	@State var location: Location = .depok

	var body: some View {

		VStack {
			
			Picker("Location", selection: $location.animation(.easeInOut)) {
				Text("Depok").tag(Location.depok)
				Text("Senopati").tag(Location.senopati)
			}
			.pickerStyle(.segmented)
			.padding(.bottom)

			if #available(iOS 16.0, *) {

				Chart(location == .depok ? depokVisits : senopatiVisits) { data in
					BarMark(
						x: .value("Name", data.day),
						y: .value("Visitor", data.visitor)
					)
				}

			} else {
				Text("Need iOS 16")
			}
		}
	}
}

struct BarChart_Previews: PreviewProvider {
	static var previews: some View {
		BarChartView()
			.frame(height: 400)
			.padding()
	}
}
