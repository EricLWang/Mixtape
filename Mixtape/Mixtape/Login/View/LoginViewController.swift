//
//  LoginViewController.swift
//  Mixtape
//
//  Created by Eric Wang on 3/10/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class LoginViewController: BaseViewController<LoginViewModel> {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        loginButton.setDropShadow(shadowColor: UIColor(red:0.75, green:0.80, blue:0.84, alpha:1.0))
    }
    
    //    override func createViewModel() -> LoginViewModel {
//        return LoginViewModel(loginTapped: <#T##SharedSequence<DriverSharingStrategy, Void>#>)
//    }
}
