//
//  CompetitionCard.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class CompetitionCardView: UIView {

    private var headerTitle: UILabel = UILabel()
    private var editButton: UIButton = UIButton()
    private var deleteButton: UIButton = UIButton()
    private var competitionName: UILabel = UILabel()
    private var dateCompetition: UILabel = UILabel()
    private var tagView: UIView = UIView()
    private var tagLabel: UILabel = UILabel()
    private var participantsLabel: UILabel = UILabel()
    private var participantsDetailLabel: UILabel = UILabel()
    private var timeLabel: UILabel = UILabel()
    private var timeDetailLabel: UILabel = UILabel()
    private var backWinView: UIView = UIView()
    private var winLabel: UILabel = UILabel()

    var editClosure: (() -> Void)?

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
        setUpEditButton()
        setUpDeleteButton()
        setUpCompetitionName()
        setUpDateCompetition()
        setUpTagView()
        setUpTagLabel()
        setUpParticipantsLabel()
        setUpParticipantsDetailLabel()
        setUpTimeLabel()
        setUpTimeDetailLabel()
        setUpBackWinView()
        setUpWinLabel()
    }

    private func setUpHeaderTitle() {
        addSubview(headerTitle)
        headerTitle.text = "My competition"
        headerTitle.textColor = .white
        headerTitle.font = UIFont.systemFont(ofSize: 17)
        headerTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerTitle.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerTitle.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
        ])
    }

    private func setUpEditButton() {
        addSubview(editButton)
        editButton.setImage(.edit, for: .normal)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        let action: UIAction = UIAction { [weak self] _ in
            self?.editClosure?()
        }
        editButton.addAction(action, for: .touchUpInside)
        NSLayoutConstraint.activate([
            editButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            editButton.leadingAnchor.constraint(equalTo: headerTitle.trailingAnchor, constant: 60),
            editButton.widthAnchor.constraint(equalToConstant: 19),
            editButton.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    private func setUpDeleteButton() {
        addSubview(deleteButton)
        deleteButton.setImage(.trash, for: .normal)
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deleteButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            deleteButton.leadingAnchor.constraint(equalTo: editButton.trailingAnchor, constant: 16),
            deleteButton.widthAnchor.constraint(equalToConstant: 20),
            deleteButton.heightAnchor.constraint(equalToConstant: 22)
        ])
    }

    private func setUpCompetitionName() {
        addSubview(competitionName)
        competitionName.text = "Bicycle competition"
        competitionName.textColor = .white
        competitionName.font = UIFont.boldSystemFont(ofSize: 28)
        competitionName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            competitionName.topAnchor.constraint(equalTo: headerTitle.bottomAnchor, constant: 38),
            competitionName.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpDateCompetition() {
        addSubview(dateCompetition)
        dateCompetition.text = "02.08.2023"
        dateCompetition.textColor = .white
        dateCompetition.font = UIFont.systemFont(ofSize: 13)
        dateCompetition.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dateCompetition.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 16),
            dateCompetition.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }

    private func setUpTagView() {
        addSubview(tagView)
        tagView.translatesAutoresizingMaskIntoConstraints = false
        tagView.backgroundColor = .red
        tagView.layer.cornerRadius = 16
        NSLayoutConstraint.activate([
            tagView.topAnchor.constraint(equalTo: competitionName.bottomAnchor, constant: 16),
            tagView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            tagView.heightAnchor.constraint(equalToConstant: 29),
            tagView.widthAnchor.constraint(equalToConstant: 93)
        ])
    }

    private func setUpTagLabel() {
        tagView.addSubview(tagLabel)
        tagLabel.text = "#bicycle"
        tagLabel.translatesAutoresizingMaskIntoConstraints = false
        tagLabel.textColor = .white
        tagLabel.font = UIFont.systemFont(ofSize: 16)
        NSLayoutConstraint.activate([
            tagLabel.centerXAnchor.constraint(equalTo: tagView.centerXAnchor),
            tagLabel.centerYAnchor.constraint(equalTo: tagView.centerYAnchor),
            tagLabel.heightAnchor.constraint(equalToConstant: 21),
            tagLabel.widthAnchor.constraint(equalToConstant: 61)
        ])
    }

    private func setUpParticipantsLabel() {
        addSubview(participantsLabel)
        participantsLabel.text = "Participants"
        participantsLabel.translatesAutoresizingMaskIntoConstraints = false
        participantsLabel.textColor = .red
        participantsLabel.font = UIFont.systemFont(ofSize: 13)
        NSLayoutConstraint.activate([
            participantsLabel.topAnchor.constraint(equalTo: tagView.bottomAnchor, constant: 16),
            participantsLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpParticipantsDetailLabel() {
        addSubview(participantsDetailLabel)
        participantsDetailLabel.text = "Courtney Henry, Wade Warren, Albert Flores"
        participantsDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        participantsDetailLabel.textColor = .white
        participantsDetailLabel.font = UIFont.systemFont(ofSize: 15)
        NSLayoutConstraint.activate([
            participantsDetailLabel.topAnchor.constraint(equalTo: participantsLabel.bottomAnchor, constant: 10),
            participantsDetailLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpTimeLabel() {
        addSubview(timeLabel)
        timeLabel.text = "Time"
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.textColor = .red
        timeLabel.font = UIFont.systemFont(ofSize: 13)
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: participantsDetailLabel.bottomAnchor, constant: 16),
            timeLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }

    private func setUpTimeDetailLabel() {
        addSubview(timeDetailLabel)
        timeDetailLabel.text = "1 h 17 min"
        timeDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        timeDetailLabel.textColor = .white
        timeDetailLabel.font = UIFont.systemFont(ofSize: 15)
        NSLayoutConstraint.activate([
            timeDetailLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
            timeDetailLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16)
        ])
    }

    private func setUpBackWinView() {
        addSubview(backWinView)
        backWinView.translatesAutoresizingMaskIntoConstraints = false
        backWinView.backgroundColor = .cardbg
        backWinView.layer.cornerRadius = 16
        NSLayoutConstraint.activate([
            backWinView.topAnchor.constraint(equalTo: timeDetailLabel.bottomAnchor, constant: 16),
            backWinView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            backWinView.widthAnchor.constraint(equalToConstant: 358),
            backWinView.heightAnchor.constraint(equalToConstant: 57)
        ])
    }

    private func setUpWinLabel() {
        backWinView.addSubview(winLabel)
        winLabel.text = "Winner: Albert Flores"
        winLabel.font = UIFont.boldSystemFont(ofSize: 20)
        winLabel.textColor = .yellow
        winLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            winLabel.leadingAnchor.constraint(equalTo: backWinView.leadingAnchor, constant: 16),
            winLabel.centerYAnchor.constraint(equalTo: backWinView.centerYAnchor),
        ])
    }
}
