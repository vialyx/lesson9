//  
//  HomeViewController.swift
//  LessonNine
//
//  Created by Maksim Vialykh on 29/10/2018.
//  Copyright © 2018 Vialyx. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
    
    var model: HomeModelInput!
    lazy var contentView: HomeViewInput = { return view as! HomeViewInput }()
    
}

// MARK: - HomeModelOutput
extension HomeViewController: HomeModelOutput {}

// MARK: - HomeViewControllerInput
extension HomeViewController: HomeViewControllerInput {}
