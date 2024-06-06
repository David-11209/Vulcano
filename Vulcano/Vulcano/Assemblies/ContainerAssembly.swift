//
//  ContainerAssembly.swift
//  Vulcano
//
//  Created by Давид Васильев on 06.06.2024.
//

import Swinject
class ContainerAssembly: Assembly {
    func assemble(container: Swinject.Container) {

        container.register(CompetitionsViewModelProtocol.self) { _ in
            CompetitionsViewModel()
        }

        container.register(CompetitionCardViewModelProtocol.self) { _ in
            CompetitionCardViewModel()
        }

        container.register(EditCompetitionCardViewModelProtocol.self) { _ in
            EditCompetitionCardViewModel()
        }
    }
}
