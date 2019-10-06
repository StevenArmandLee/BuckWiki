import UIKit


#if swift(>=4.2)
typealias ArgType = [UIApplication.LaunchOptionsKey: Any]? // Xcode 10
#else
typealias ArgType = [UIApplicationLaunchOptionsKey : Any]? // Xcode 9
#endif

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    let window = UIWindow(frame: UIScreen.main.bounds)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: ArgType) -> Bool {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
        window.makeKeyAndVisible()
        window.rootViewController = vc
        
        return true
    }
}
