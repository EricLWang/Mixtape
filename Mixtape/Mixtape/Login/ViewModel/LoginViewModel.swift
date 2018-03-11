//
//  LoginViewModel.swift
//  Mixtape
//
//  Created by Eric Wang on 3/10/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import RxSwift
import RxCocoa

class LoginViewModel: BaseViewModel {
    
    let authEnabled = BehaviorSubject<Bool>(value: false)
    
    init(loginTapped: Driver<Void>) {
        super.init()
        
        loginTapped.drive(onNext: { (_) in
            self.authEnabled.onNext(true)
        }).disposed(by: disposeBag)
    }
}
