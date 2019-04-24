import UIKit

class BottomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(label)
        let margin: CGFloat = 8
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: margin),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor)
            ])
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello there, cowboy"
        label.textAlignment = .center        
        return label
    }()
}
