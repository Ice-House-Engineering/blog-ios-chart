//
//  File.swift
//  ChartDemo
//
//  Created by Eibiel Sardjanto on 23/06/22.
//

import Foundation

struct OfficeVisitData: Identifiable {
	let day: String
	let visitor: Int

	var id: String { day }
}

enum Location {
	case depok
	case senopati
}

let depokVisits: [OfficeVisitData] = [
	.init(day: "Mon", visitor: 10),
	.init(day: "Tue", visitor: 20),
	.init(day: "Wed", visitor: 23),
	.init(day: "Thu", visitor: 15),
	.init(day: "Fri", visitor: 30)
]

let senopatiVisits: [OfficeVisitData] = [
	.init(day: "Mon", visitor: 15),
	.init(day: "Tue", visitor: 12),
	.init(day: "Wed", visitor: 22),
	.init(day: "Thu", visitor: 31),
	.init(day: "Fri", visitor: 29),
]

struct SeriesData: Identifiable {
	let location: String
	let data: [OfficeVisitData]

	var id: String { location }
}

let seriesData: [SeriesData] = [
	.init(location: "Depok", data: depokVisits),
	.init(location: "Senopati", data: senopatiVisits)
]
