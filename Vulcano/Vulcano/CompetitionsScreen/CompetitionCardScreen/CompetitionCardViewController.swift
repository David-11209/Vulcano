//
//  CompetitionCardViewController.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class CompetitionCardViewController: UIViewController {

    private var contentView = CompetitionCardView()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func loadView() {
        view = contentView
    }
}
