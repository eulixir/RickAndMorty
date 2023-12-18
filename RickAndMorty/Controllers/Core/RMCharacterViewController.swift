//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by João Pedro Alves on 17/12/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"

        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) {
            result in switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
