//
//  CompetitionCollectionViewCell.swift
//  Vulcano
//
//  Created by Давид Васильев on 06.06.2024.
//

import UIKit

class CompetitionCollectionViewCell: UICollectionViewCell {

    private var titleLabel: UILabel = UILabel()
    private var dateLabel: UILabel = UILabel()
    private var winnerImage: UIImageView = UIImageView()
    private var winnerLabel: UILabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .cardbg
        self.layer.cornerRadius = 16
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUp() {
        setUpTitleLabel()
        setUpDateLabel()
        setUpWinnerImage()
        setUpWinnerLabel()
    }

    private func setUpTitleLabel() {
        addSubview(titleLabel)
        titleLabel.text = "Bicycle competition"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
    }

    private func setUpDateLabel() {
        addSubview(dateLabel)
        dateLabel.text = "02.10.2004"
        dateLabel.textColor = .lightGray
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.font = UIFont.systemFont(ofSize: 13)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            dateLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }

    private func setUpWinnerImage() {
        addSubview(winnerImage)
        winnerImage.image = .cup
        winnerImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            winnerImage.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 16),
            winnerImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            winnerImage.heightAnchor.constraint(equalToConstant: 20),
            winnerImage.widthAnchor.constraint(equalToConstant: 20)
        ])
    }

    private func setUpWinnerLabel() {
        addSubview(winnerLabel)
        winnerLabel.text = "Winner: Alber Flores"
        winnerLabel.textColor = .yellow
        winnerLabel.translatesAutoresizingMaskIntoConstraints = false
        winnerLabel.font = UIFont.systemFont(ofSize: 15)
        NSLayoutConstraint.activate([
            winnerLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 16),
            winnerLabel.leadingAnchor.constraint(equalTo: winnerImage.trailingAnchor, constant: 4),
        ])
    }
}
