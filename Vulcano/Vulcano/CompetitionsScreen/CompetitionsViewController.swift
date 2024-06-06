//
//  CompetitionsViewController.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class CompetitionsViewController: UIViewController {

    private var contentView: CompetitionsView = .init()
    private var viewModel: CompetitionsViewModelProtocol
    var didSelectItem: (() -> Void)?
    init(viewModel: CompetitionsViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.competitionsColletionView.delegate = self
        contentView.competitionsColletionView.dataSource = viewModel
        contentView.competitionsColletionView.register(
                   CompetitionCollectionViewCell.self, forCellWithReuseIdentifier: CompetitionCollectionViewCell.reuseIdentifier)
    }

    override func loadView() {
        view = contentView
    }
}

extension CompetitionsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
         _ collectionView: UICollectionView,
         layout collectionViewLayout: UICollectionViewLayout,
         sizeForItemAt indexPath: IndexPath
     ) -> CGSize {
         return CGSize(width: 358, height: 93)
     }

     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//         didSelectItem?(dataManager.getData(index: indexPath.row))
         didSelectItem?()
     }
}
