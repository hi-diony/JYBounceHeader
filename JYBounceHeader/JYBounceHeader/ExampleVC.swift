//
//  ExampleVC.swift
//  JYBounceHeader
//
//  Created by 박지연 on 2017. 12. 18..
//  Copyright © 2017년 Park ji yeon. All rights reserved.
//

import UIKit

class ExampleVC: UIViewController, UIScrollViewDelegate {
	
	var image: UIImage?
	
	@IBOutlet private var vBounceHeader: JYBounceHeader!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		vBounceHeader.image = image
    }

	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		vBounceHeader.scrollViewDidScroll(scrollView.contentOffset)
	}

	@IBAction private func onBack(_ sender: UIButton) {
		self.navigationController?.popViewController(animated: true)
	}
}
