# JYBounceHeader
Basic Bounce Header
coverage : ios 9.0 +

### Use Example

```markdown

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

```

