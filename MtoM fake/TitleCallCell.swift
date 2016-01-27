//
//  TitleCallCell.swift
//  MtoM fake
//
//  Created by Student on 1/25/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

class TitleCallCell: UITableViewCell {
    var clouseButton = UIButton()
    var callView : CallView?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layoutBodyCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layoutBodyCell(){
        self.backgroundColor = UIColor.redColor()
        self.addSubview(clouseButton)
        clouseButton.mt_InnerAlign(PinPosition.MidRight, space: 8, size: CGSize(width: 20, height: 20))
        clouseButton.layer.cornerRadius = 9
        let title = "X"
        clouseButton.setTitle(title, forState: UIControlState.Normal)
        clouseButton.backgroundColor = UIColor.whiteColor()
        clouseButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        clouseButton.addTarget(self, action: "hideCallView", forControlEvents: UIControlEvents.TouchUpInside)
    }
    func hideCallView() {
        callView?.hideCallView()
    }
    
}
