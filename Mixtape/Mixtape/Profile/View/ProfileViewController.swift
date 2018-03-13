//
//  ProfileViewController.swift
//  Mixtape
//
//  Created by Eric Wang on 3/13/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class ProfileViewController: BaseViewController<ProfileViewModel> {
    
    @IBOutlet weak var backButton: UIButton!
    
    override func createViewModel() -> ProfileViewModel {
        return ProfileViewModel()
    }
    
    override func dataBinding() {
        
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
