//
//  ListViewController.swift
//  API-Networking
//
//  Created by MacMini01 on 19/07/2022.
//

import UIKit

struct Point {
	var long:Double!
	var lat:Double!
}

extension Point: CustomStringConvertible {
	var description: String {
		return "(\(long!), \(lat!))"
	}
}

struct Location {
	var id:String?
	var region:String?
	
	var startDate:String?
	var endDate:String?
	
	var nameSideA:String?
	var deathA:Int?
	
	var nameSideB:String?
	var deathB:Int?
	
	var sourceArticle:String?
	var sourceOriginal:String?
	
	var geom_wkt:Point?
}

class ListViewController: UIViewController {
	var locationList = [Location]()

	@IBOutlet weak var positionTable: UITableView!
	
	
	override func viewDidLoad() {
        super.viewDidLoad()

        prepareTable()
    }

}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return locationList.count
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "PosCell", for: indexPath) as! PositionCell
		
		let location = locationList[indexPath.section]
		
		cell.ID.text = location.id
		cell.region.text = location.region
		cell.nameSideA.text = location.nameSideA
		cell.nameSideB.text = location.nameSideB
		cell.deathA.text = "Death: \(location.deathA!)"
		cell.deathB.text = "Death: \(location.deathB!)"
		cell.startDate.text = location.startDate
		cell.endDate.text = location.endDate
		cell.sourceArticle.text = location.sourceArticle
		cell.sourceOriginal.text = location.sourceOriginal
		cell.geopoint.text = String(describing: location.geom_wkt)
		
		return cell
	}
	
	func prepareTable() {
		self.positionTable.delegate = self
		self.positionTable.dataSource = self
	}
}

class PositionCell: UITableViewCell {
	@IBOutlet weak var ID: UILabel!
	@IBOutlet weak var region: UILabel!
	
	@IBOutlet weak var startDate: UILabel!
	@IBOutlet weak var endDate: UILabel!
	
	@IBOutlet weak var nameSideA: UILabel!
	@IBOutlet weak var deathA: UILabel!
	
	@IBOutlet weak var nameSideB: UILabel!
	@IBOutlet weak var deathB: UILabel!
	
	@IBOutlet weak var sourceArticle: UILabel!
	@IBOutlet weak var sourceOriginal: UILabel!
	
	@IBOutlet weak var geopoint: UILabel!
}
