//
//  EditCompetitionCardViewController.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class EditCompetitionCardViewController: UIViewController {

    private var contentView = EditCompetitionCardView()
    private var viewModel: EditCompetitionCardViewModelProtocol

    init(viewModel: EditCompetitionCardViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func loadView() {
        view = contentView
    }
}
