import UIKit.UIViewController
import UIKit.UITableViewCell
import UIKit.UIStoryboardSegue

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension StoryboardIdentifiable where Self: UITableViewCell {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension StoryboardIdentifiable where Self: UICollectionReusableView {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension StoryboardIdentifiable where Self: UIStoryboardSegue {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
