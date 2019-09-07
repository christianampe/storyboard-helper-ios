import UIKit.UIStoryboardSegue
import UIKit.UIViewController

extension UIStoryboardSegue {
    
    /// Method used to implicitly extract the view controller's type from the segue's destination.
    ///
    /// - Returns: Typesafe instance of the destinations UIViewController.
    func viewController<T: UIViewController>() -> T {
        guard let viewController = destination as? T else {
            fatalError("Cannot segue to: \(T.self) with identifier: \(T.storyboardIdentifier)")
        }
        
        return viewController
    }
}
