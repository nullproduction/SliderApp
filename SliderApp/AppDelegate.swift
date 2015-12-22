
import UIKit
import DrawerController

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var drawerController: DrawerController!

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let center = UINavigationController(rootViewController: FirstViewController())
        let menu = MenuViewController()
        
        drawerController = DrawerController(
            centerViewController: center,
            leftDrawerViewController: menu,
            rightDrawerViewController: nil
        )
        
        drawerController.showsShadows = false
        drawerController.openDrawerGestureModeMask = .All
        drawerController.closeDrawerGestureModeMask = .All
        drawerController.centerHiddenInteractionMode = .Full
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = drawerController
        window?.makeKeyAndVisible()

        return true
    }

}

