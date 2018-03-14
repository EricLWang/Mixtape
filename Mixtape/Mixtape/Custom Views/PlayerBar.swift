//
//  PlayerBar.swift
//  Mixtape
//
//  Created by Eric Wang on 3/14/18.
//  Copyright © 2018 EricWang. All rights reserved.
//

import UIKit

@IBDesignable
public class PlayerBar: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!
    
    var nibName: String!
    var view: UIView!
    
    // MARK: - Init
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    // MARK: - Public
    
    func xibSetup() {
        if let viewFromNib = loadViewFromNib() {
            view = viewFromNib
            view.frame = bounds
            view.autoresizingMask = [ .flexibleWidth, .flexibleHeight ]
            
            addSubview(view)
        }
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "PlayerBar", bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            return view
        }
        
        return nil
    }
}
