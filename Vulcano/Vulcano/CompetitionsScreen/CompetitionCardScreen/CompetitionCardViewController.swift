//
//  CompetitionCardViewController.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class CompetitionCardViewController: UIViewController {

    private var contentView: CompetitionCardView = .init()
    var viewModel: CompetitionCardViewModelProtocol
    var editClosure: (() -> Void)?

    init(viewModel: CompetitionCardViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.editClosure = {
            self.editClosure?()
        }
    }

    override func loadView() {
        view = contentView
    }
}
