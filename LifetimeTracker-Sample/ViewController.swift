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
    
    private var viewControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func leakButtonTapped(_ sender: Any) {
        let vc = ViewController()
        viewControllers.append(vc)
    }
    
    @IBAction func deinitButtonTapped(_ sender: Any) {
        guard !viewControllers.isEmpty else { return }
        viewControllers.removeLast()
    }
}

extension ViewController: LifetimeTrackable {}
