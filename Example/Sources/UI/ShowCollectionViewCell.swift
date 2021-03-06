import UIKit
import IBentifiers
import Nuke

class ShowCollectionViewCell: UICollectionViewCell, NibLoadable, Reusable {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var label: UILabel!

    var show: Show? {
        didSet {
            render()
        }
    }

    private func render() {
        if let show = show {
            loadImage(with: show.imageURL, into: imageView)
            label.text = show.title
        }
    }
}
