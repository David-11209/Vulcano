//
//  EditCompetitionCardView.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class EditCompetitionCardView: UIView {

    private var headerTitle: UILabel = UILabel()
    private var checkmarkButton: UIButton = UIButton()

    private var titleTextField: CustomTextField = CustomTextField(title: "Title", placeholder: "Add title")

    private var dateTextField: CustomTextField = CustomTextField(title: "Date", placeholder: "dd.mm.yyyy")

    private var sportTypeTextField: CustomTextField = CustomTextField(title: "Sport type", placeholder: "Add sports")

    private var participantsTextField: CustomTextField = CustomTextField(title: "Participants", placeholder: "Choose your friends")

    private var winnerTextField: CustomTextField = CustomTextField(title: "Winner", placeholder: "Choose winner")

    private var timeTextField: CustomTextField = CustomTextField(title: "Time", placeholder: "hh, mm")

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .bg
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setUp() {
        setUpHeaderTitle()
        setUpCheckmarkButton()
        setUpTitleTextField()
        setUpDateTextField()
        setUpSportTypeTextField()
        setUpParticipantsTextField()
        setUpWinnerTextField()
        setUpTimeTextField()
    }

    private func setUpHeaderTitle() {
        addSubview(headerTitle)
        headerTitle.text = "Edit competition"
        headerTitle.textColor = .white
        headerTitle.font = UIFont.systemFont(ofSize: 17)
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerTitle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }

    private func setUpCheckmarkButton() {
        addSubview(checkmarkButton)
        checkmarkButton.setImage(.myCheckmark, for: .normal)
        checkmarkButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            checkmarkButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            checkmarkButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            checkmarkButton.widthAnchor.constraint(equalToConstant: 20),
            checkmarkButton.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    private func setUpTitleTextField() {
        addSubview(titleTextField)
        titleTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleTextField.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 32),
            titleTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpDateTextField() {
        addSubview(dateTextField)
        dateTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dateTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 16),
            dateTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpSportTypeTextField() {
        addSubview(sportTypeTextField)
        sportTypeTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            sportTypeTextField.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 32),
            sportTypeTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpParticipantsTextField() {
        addSubview(participantsTextField)
        participantsTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            participantsTextField.topAnchor.constraint(equalTo: sportTypeTextField.bottomAnchor, constant: 16),
            participantsTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpWinnerTextField() {
        addSubview(winnerTextField)
        winnerTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            winnerTextField.topAnchor.constraint(equalTo: participantsTextField.bottomAnchor, constant: 32),
            winnerTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpTimeTextField() {
        addSubview(timeTextField)
        timeTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            timeTextField.topAnchor.constraint(equalTo: winnerTextField.bottomAnchor, constant: 16),
            timeTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }
}
