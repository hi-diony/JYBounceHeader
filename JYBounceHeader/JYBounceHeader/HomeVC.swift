//
//  HomeVC.swift
//  JYBounceHeader
//
//  Created by 박지연 on 2017. 12. 18..
//  Copyright © 2017년 Park ji yeon. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet private var tvTableview: UITableView!
	private let titles = ["Wide width, Short height", "Narrow width, Long height"]
	private let pictures = ["picture1", "picture2"]
	
    override func viewDidLoad() {
        super.viewDidLoad()

        initUi()
    }

	private func initUi() {
		tvTableview.reloadData()
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return titles.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: .default, reuseIdentifier: "imageCell")
		
		cell.imageView?.image = UIImage(named: pictures[indexPath.row])
		cell.textLabel?.text = titles[indexPath.row]
		
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let vc = ExampleVC()
		vc.image = UIImage(named: pictures[indexPath.row])
		self.navigationController?.pushViewController(vc, animated: true)
	}
}
