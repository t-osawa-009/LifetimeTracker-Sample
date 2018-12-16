import UIKit
import LifetimeTracker

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        LifetimeTracker.setup(onUpdate: LifetimeTrackerDashboardIntegration(visibility: .alwaysVisible, style: .bar).refreshUI)
        return true
    }
}

