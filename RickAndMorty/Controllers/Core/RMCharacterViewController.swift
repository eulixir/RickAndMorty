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
        
        let request = RMRequest(
            endpoint: .character, 
            queryParameters: 
                [
                    URLQueryItem(name: "Rick", value: "rick"),
                    URLQueryItem(name: "status", value: "alive")
                ]
        )
        print(request.url)
    }
}
