import UIKit
import LifetimeTracker

class ViewController: UIViewController {
    static var lifetimeConfiguration = LifetimeConfiguration(maxCount: 1, groupName: "VC")
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        trackLifetime()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        trackLifetime()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
}

extension ViewController: LifetimeTrackable {}
