import UIKit.UITableView
import UIKit.UITableViewCell

extension UITableView {
    
    /// Returns a reusable table-view cell object for the specified UITableViewCell type and adds it to the table.
    ///
    /// - Parameter indexPath: The index path specifying the location of the cell. The data source receives this information when it is asked for the cell and should just pass it along. This method uses the index path to perform additional configuration based on the cell’s position in the table view.
    /// - Returns: A UITableViewCell object with the associated type. If no UITableViewCell is associated with the type, this method throws an exception.
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.storyboardIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Cannot dequeue: \(T.self) with identifier: \(T.storyboardIdentifier)")
        }
        
        return cell
    }
    
    func registerTableViewCell<T: UITableViewCell>(xibCell: T.Type) {
        register(UINib(nibName: T.storyboardIdentifier, bundle: nil), forCellReuseIdentifier: T.storyboardIdentifier)
    }
    
    func registerTableViewCell<T: UITableViewCell>(cell: T.Type) {
        register(T.self, forCellReuseIdentifier: T.storyboardIdentifier)
    }
}
