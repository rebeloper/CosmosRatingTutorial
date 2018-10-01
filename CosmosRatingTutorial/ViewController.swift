//
//  ViewController.swift
//  CosmosRatingTutorial
//
//  Created by Alex Nagy on 01/10/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import Cosmos
import TinyConstraints

class ViewController: UIViewController {
    
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()
//        view.settings.updateOnTouch = false
        view.settings.filledImage = UIImage(named: "RatingStarFilled")?.withRenderingMode(.alwaysOriginal)
        view.settings.emptyImage = UIImage(named: "RatingStarEmpty")?.withRenderingMode(.alwaysOriginal)
        
        view.settings.totalStars = 10
        view.settings.starSize = 17
        view.settings.starMargin = 3.3
        view.settings.fillMode = .precise
        
        view.text = "Rate me"
        view.settings.textColor = .red
        view.settings.textMargin = 10
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        view.addSubview(cosmosView)
        cosmosView.centerInSuperview()
        
        cosmosView.didTouchCosmos = { rating in
            print("Rated: \(rating)")
        }
    }


}

