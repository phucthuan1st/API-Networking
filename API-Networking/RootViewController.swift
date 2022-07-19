//
//  ViewController.swift
//  API-Networking
//
//  Created by MacMini01 on 19/07/2022.
//

import UIKit

class RootViewController: UIViewController {

	@IBOutlet weak var controlSegment: UISegmentedControl!
	@IBOutlet weak var mapView: UIView!
	@IBOutlet weak var listView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		listView.isHidden = false
		mapView.isHidden = true
		
	}


	@IBAction func didSwitchView(_ sender: UISegmentedControl) {
		if controlSegment.selectedSegmentIndex == 0 {
			listView.isHidden = false
			mapView.isHidden = true
		}
		else if controlSegment.selectedSegmentIndex == 1 {
			listView.isHidden = true
			mapView.isHidden = false
		}
	}
}

