//
//  CompetitionsScreenViewModel.swift
//  Vulcano
//
//  Created by Давид Васильев on 05.06.2024.
//

import UIKit

class CompetitionsViewModel: NSObject, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CompetitionCollectionViewCell.reuseIdentifier, for: indexPath) as? CompetitionCollectionViewCell
        else {
            return UICollectionViewCell()
        }
//        if indexPath.row == 0 {
//            cell.configureFirstCell()
//            return cell
//        } else if indexPath.row == 1 {
//            cell.configureSecondCell()
//        } else {
//            cell.configure(block: dataSource[indexPath.row - 2])
//            cell.didSelectItem = { [weak self] tuple in
//                self?.closeClosure?(tuple)
//            }
//        }
        return cell
    }
    

}
