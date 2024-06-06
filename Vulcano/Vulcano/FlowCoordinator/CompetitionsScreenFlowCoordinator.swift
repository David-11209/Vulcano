//
//  CompetitionsScreenFlowCoordinator.swift
//  Vulcano
//
//  Created by Давид Васильев on 06.06.2024.
//

import Swinject
import UIKit

class CompetitionsScreenFlowCoordinator: CoordinatorProtocol {

    var navigationController: UINavigationController
    let container: Container

    init(
        navigationController: UINavigationController,
        container: Container
    ) {
        self.navigationController = navigationController
        self.container = container
    }

    func start() {
        guard let viewModel = container.resolve(
            CompetitionsViewModelProtocol.self
        ) else {
            return
        }
        let image: UIImage = .competitions
        let viewController = CompetitionsViewController(
            viewModel: viewModel
        )
        let item = UITabBarItem(
            title: nil,
            image: image.resizeImage(
                to: CGSize(
                    width: 75,
                    height: 40
                )
            ),
            selectedImage: nil
        )
        item.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 10)
        viewController.tabBarItem = item
        viewController.didSelectItem = {
            self.showCompetitionScreen()
        }
        navigationController = UINavigationController(
            rootViewController: viewController
        )
        navigationController.isNavigationBarHidden = true
    }

    func showCompetitionScreen() {
        navigationController.tabBarController?.tabBar.isHidden = true
        guard let viewModel = container.resolve(
            CompetitionCardViewModelProtocol.self
        ) else { return }

        let viewController = CompetitionCardViewController(
            viewModel: viewModel
        )
        viewController.editClosure = {
            self.showEditScreen()
        }
        navigationController.pushViewController(
            viewController,
            animated: true
        )
//        viewController.exitClosure = {
//            self.navigationController.tabBarController?.tabBar.isHidden = false
//            self.navigationController.popViewController(animated: true)
//        }
//        viewController.didSelectItem = { level in
//            self.showLoadingLevelScreen(level: level, theoryImageUrl: nil, theoryText: nil)
//        }
//        viewController.didSelectTheory = {
//            self.showLoadingLevelScreen(level: nil, theoryImageUrl: tuple.0.theoryImage, theoryText: tuple.0.theoryText)
//        }
    }

    func showEditScreen() {
        navigationController.tabBarController?.tabBar.isHidden = true
        guard let viewModel = container.resolve(
            EditCompetitionCardViewModelProtocol.self
        ) else { return }

        let viewController = EditCompetitionCardViewController(
            viewModel: viewModel
        )
//        viewController.editClosure = {
//
//        }
        navigationController.pushViewController(
            viewController,
            animated: true
        )
    }
}
