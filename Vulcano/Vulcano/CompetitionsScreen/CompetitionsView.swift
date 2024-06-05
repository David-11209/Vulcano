//
//  CompetiotionsView.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class CompetitionsView: UIView {

    private var titleLabel: UILabel = UILabel()
    private var addButton: UIButton = UIButton()
    private var datePicker: UIDatePicker = UIDatePicker()
    var competitionsColletionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsVerticalScrollIndicator = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .bg
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUp() {
        setUpTitleLabel()
        setUpAddButton()
        setUpDatePicker()
        setUpCompetitionsColletionView()
    }

    private func setUpTitleLabel() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 34)
        titleLabel.text = "Competitions"
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            titleLabel.heightAnchor.constraint(equalToConstant: 41)
        ])
    }

    private func setUpAddButton() {
        addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.backgroundColor = .red
        addButton.layer.cornerRadius = 16
        addButton.setImage(.myAdd, for: .normal)
        NSLayoutConstraint.activate([
            addButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            addButton.heightAnchor.constraint(equalToConstant: 42),
            addButton.widthAnchor.constraint(equalToConstant: 89),
            addButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
        ])
    }

    private func setUpDatePicker() {
        addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.datePickerMode = .date
        datePicker.overrideUserInterfaceStyle = .dark
        datePicker.preferredDatePickerStyle = .inline
        datePicker.tintColor = .red
        NSLayoutConstraint.activate([
              datePicker.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
              datePicker.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
              datePicker.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
    }

    private func setUpCompetitionsColletionView() {
        addSubview(competitionsColletionView)
        competitionsColletionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            competitionsColletionView.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 16),
            competitionsColletionView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            competitionsColletionView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            competitionsColletionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 40)
        ])
    }
}
