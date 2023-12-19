//
//  CharactersListViewViewModel.swift
//  RickAndMorty
//
//  Created by João Pedro Alves on 18/12/23.
//

import UIKit

final class CharactersListViewViewModel: NSObject {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: result count: " + String(model.info.pages))
                print("Page result count: " + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}

extension CharactersListViewViewModel: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)

        cell.backgroundColor = .systemCyan
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 30) / 2
        let heigth = width * 1.5
        return CGSize(width: width, height: heigth)
    }
}
