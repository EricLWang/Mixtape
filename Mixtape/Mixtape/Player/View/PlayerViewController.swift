//
//  PlayerViewController.swift
//  Mixtape
//
//  Created by Eric Wang on 3/25/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class PlayerViewController: BaseViewController<PlayerViewModel> {
    
    @IBOutlet weak var collapseButton: UIButton!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var cdCenterView: UIView!
    
    @IBOutlet weak var songTitleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var selectedByLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var addToPlaylistButton: UIButton!
    
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var songTimeProgressView: UIProgressView!
    @IBOutlet weak var totalTimeLabel: UILabel!
    
    @IBOutlet weak var rewindButton: UIButton!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var fastForwardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        albumImage.layer.cornerRadius = (albumImage.frame.size.width / 2)
        albumImage.clipsToBounds = true
        
        cdCenterView.layer.cornerRadius = (cdCenterView.frame.size.width / 2)
        cdCenterView.clipsToBounds = true
    }
    
    override func createViewModel() -> PlayerViewModel {
        return PlayerViewModel()
    }
    
    override func dataBinding() {
        
    }
    
    @IBAction func minimizePlayer(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
