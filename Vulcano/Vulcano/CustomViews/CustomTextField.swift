import UIKit

class CustomTextField: UIView {

    private var backView: UIView = UIView()
    private var titleLabel: UILabel = UILabel()
    private var textField: UITextField = UITextField()

    init(title: String, placeholder: String) {
        super.init(frame: .zero)
        titleLabel.text = title
        textField.attributedPlaceholder = NSAttributedString(
                string: "Placeholder",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
            )
        textField.placeholder = placeholder
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUp() {
        setUpBackView()
        setUpTitleLabel()
        setUpTextField()
    }

    private func setUpBackView() {
        addSubview(backView)
        backView.backgroundColor = .cardbg
        backView.layer.cornerRadius = 16
        backView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backView.topAnchor.constraint(equalTo: topAnchor),
            backView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backView.widthAnchor.constraint(equalToConstant: 358),
            backView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }

    private func setUpTitleLabel() {
        backView.addSubview(titleLabel)
        titleLabel.font = UIFont.systemFont(ofSize: 11)
        titleLabel.textColor = .red
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 16)
        ])
    }

    private func setUpTextField() {
        backView.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .clear
        textField.textColor = .white
        textField.layer.borderColor = UIColor.clear.cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            textField.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -16),
            textField.heightAnchor.constraint(equalToConstant: 30)
        ])
        textField.addTarget(self, action: #selector(textFieldDidBeginEditing), for: .editingDidBegin)
        textField.addTarget(self, action: #selector(textFieldDidEndEditing), for: .editingDidEnd)
    }

    @objc private func textFieldDidBeginEditing() {
        backView.layer.borderColor = UIColor.red.cgColor
        backView.layer.borderWidth = 1
    }

    @objc private func textFieldDidEndEditing() {
        backView.layer.borderColor = UIColor.clear.cgColor
        backView.layer.borderWidth = 0
    }
}
