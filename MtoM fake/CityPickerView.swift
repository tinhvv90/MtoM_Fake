//
//  PickerView.swift
//  MtoM fake
//
//  Created by Student on 1/13/16.
//  Copyright © 2016 Trương Thắng. All rights reserved.
//

import UIKit

<<<<<<< Updated upstream
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
class CityPickerView: UIView,UIPickerViewDataSource,UIPickerViewDelegate {
    var cityPickerView = UIPickerView()
    var popView : PopView!
    convenience init(popView: PopView) {
        self.init()
        self.popView = popView
    }
    
    var dataCityPickerView = ["Thai Binh", "Ha Noi", "TPHCM"]
    
    override func layoutSubviews() {
        self.addSubview(cityPickerView)
        cityPickerView.mt_innerAlign(left: 0, top: 0, right: 0, bottom: 0)
        cityPickerView.dataSource = self
        cityPickerView.delegate = self
        cityPickerView.selectRow(1, inComponent: 0, animated: true)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
<<<<<<< Updated upstream
=======
class CityPickerView: PickerView , UIPickerViewDataSource {
    var cityPickerView = UIPickerView()
    
    var dataCityPickerView = ["Nam Dinh","Hai Phong","Hai Duong"]
    
    override func createPickerView(){
        super.createPickerView()
        cityPickerView.dataSource = self
    }
    
>>>>>>> f4f82ab324e0aaa515088b03c750689767bd476c
=======
>>>>>>> Stashed changes
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataCityPickerView.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataCityPickerView[row]
    }
<<<<<<< Updated upstream
<<<<<<< HEAD
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        popView.cityTextFeild.text = dataCityPickerView[row]
=======

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let data = dataCityPickerView[row]
       popView.cityButton.setTitle(data, forState: .Normal)
>>>>>>> f4f82ab324e0aaa515088b03c750689767bd476c
=======
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        popView.cityTextFeild.text = dataCityPickerView[row]
>>>>>>> Stashed changes
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
}
