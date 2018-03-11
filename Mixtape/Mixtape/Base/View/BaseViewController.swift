//
//  ViewController.swift
//  Mixtape
//
//  Created by Eric Wang on 2/11/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

protocol MVVMViewController {
    associatedtype ViewModelType
    
    func createViewModel() -> ViewModelType
    func dataBinding()
}

class BaseViewController<T: BaseViewModel>: UIViewController, MVVMViewController {
    
    let disposeBag = DisposeBag()
    
    typealias ViewModelType = T
    var viewModel: T!
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = self.createViewModel()
        self.dataBinding()
    }

    // MARK: - Base Protocol Methods
    
    // This method will be overriding by the subclass to supply the corresponding view model
    func createViewModel() -> T {
        fatalError("This method must be overriden by the subclass.")
    }
    
    // This is where the subclass can do the two way data binding
    func dataBinding() {
        
    }

}

