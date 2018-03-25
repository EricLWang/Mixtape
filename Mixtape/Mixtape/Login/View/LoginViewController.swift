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
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.setDropShadow(shadowColor: UIColor.black, shadowWidth: loginButton.frame.size.width, shadowHeight: 4.0, shadowRadius: 5.0)
        loginButton.setCornerRadius(cornerRadius: loginButton.frame.size.height / 2)
    }
    
    override func createViewModel() -> LoginViewModel {
        return LoginViewModel(loginTapped: loginButton.rx.tap.asDriver())
    }
    
    override func dataBinding() {
        viewModel.authEnabled.asDriver(onErrorJustReturn: false)
            .drive(onNext: { (authEnabled) in
            if authEnabled {
                self.pushToFeed()
            }
        }).disposed(by: disposeBag)
    }
    
    private func pushToFeed() {
        if let vc = UIStoryboard.instantiateViewController(withIdentifier: "PlayerViewController", inStoryboard: .MAIN) as? PlayerViewController {
            // TODO: pass necessary data to feed vc
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
