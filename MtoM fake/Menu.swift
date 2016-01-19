//
//  Menu.swift
//  MtoM fake
//
//  Created by Trương Thắng on 12/23/15.
//  Copyright © 2015 Trương Thắng. All rights reserved.
//

import UIKit

class Menu: UIView {
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
    convenience init(vc: InformationVC, frame: CGRect) {
        self.init(frame: frame)
        self.vc = vc
        spaceFilter = MenuButton(informationVC: vc)
        salaryFilter = MenuButton(informationVC: vc)
        jobFilter = MenuButton(informationVC: vc)
    }
<<<<<<< Updated upstream
<<<<<<< HEAD
    
    var vc: InformationVC?
    
=======
    
    var vc: InformationVC?
    
>>>>>>> f4f82ab324e0aaa515088b03c750689767bd476c
=======
    
    var vc: InformationVC?
    
>>>>>>> Stashed changes
    var spaceFilter = MenuButton()
    var salaryFilter = MenuButton()
    var jobFilter = MenuButton()
    
    
    
    
    override func layoutSubviews() {
<<<<<<< Updated upstream
<<<<<<< HEAD
        
=======
        spaceFilter = MenuButton(menuBt: self)
        salaryFilter = MenuButton(menuBt: self)
        jobFilter = MenuButton(menuBt: self)
>>>>>>> f4f82ab324e0aaa515088b03c750689767bd476c
=======
        
>>>>>>> Stashed changes
        self.clipsToBounds = true
        setTitleForFilterButton()
        asignSetOfButtonForMenuButton()
        addMenuButtonToSubView()
        mt_createVerticalMenu([spaceFilter, salaryFilter,jobFilter], edge: UIEdgeInsets(top: 4, left: 4, bottom: -5, right: 4), gap: 4, seperateColor: UIColor.grayColor())
        setTextButtonPadding()
//        showPlacePopView()
    }
    
    func setTitleForFilterButton() {
        spaceFilter.title = "Place"
        spaceFilter.subTitle = "Ha Noi"
        
        salaryFilter.title = "Salary"
        salaryFilter.subTitle = "> 1000USD"
        
        jobFilter.title = "Job"
        jobFilter.subTitle = "IT"
    }
    
    func asignSetOfButtonForMenuButton() {
        let buttons = [spaceFilter,salaryFilter,jobFilter]
        for item in buttons {
            item.otherButtons = buttons
        } 
    }
    
    func addMenuButtonToSubView() {
        self.addSubview(spaceFilter)
        self.addSubview(salaryFilter)
        self.addSubview(jobFilter)
    }
    
    func setTextButtonPadding() {
        spaceFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
        salaryFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
        jobFilter.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 16, right: 8)
    }
<<<<<<< Updated upstream
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
//    func showPlacePopView(){
//        vc?.placePopView!.hidden = false
//    }
//    func showSafaryPopView() {
//        vc?.salaryPopView.hidden = false
//    }
//    func showJobPopView() {
//        vc?.jobPopView.hidden = false
//    }
    
<<<<<<< Updated upstream
}
=======
    
    func showPopView(sender: MenuButton) {
        switch sender {
        case spaceFilter:
            vc?.placePopView?.showPopView(self)
        case salaryFilter:
            vc?.salaryPopView.showPopView(self)
        case jobFilter:
            vc?.jobPopView.showPopView(self)
        default : break
        }
    }
 /*
    func hidePopViewsIfNeed(popViews: [PopView]) {
        for item in popViews {
            if item.isActive == true {
                item.active = !item.active
                return item
            }
            
        }
    }
*/
    func hidePopViewIfNeed() {
        var popViews = [PopView]()
        if let placePV = vc?.placePopView {
            popViews += [placePV]
        }
        
        if let salaryPV = vc?.salaryPopView {
            popViews += [salaryPV]
        }
        
        if let jobPV = vc?.jobPopView {
            popViews += [jobPV]
        }
        
        for item in popViews {
            item.hidePopView(self)
        }
    }
=======
>>>>>>> Stashed changes
}
>>>>>>> f4f82ab324e0aaa515088b03c750689767bd476c
