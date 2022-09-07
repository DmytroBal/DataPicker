//
//  ViewController.swift
//  DataPicker
//
//  Created by Dmytro Bal on 07.09.2022.
//

import UIKit

class ViewController: UIViewController {

    let lable = UILabel()
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lable.frame = CGRect(x: 40, y: 80, width: 300, height: 40)
        lable.backgroundColor = .cyan
        lable.textColor = .black
        
        
        picker.center = view.center
        
        self.view.addSubview(lable)
        self.view.addSubview(picker)
        
        picker.addTarget(self, action: #selector(dateChangePicker(parametrDatePicker:)), for: .valueChanged)
        
    }

    @objc func dateChangePicker(parametrDatePicker: UIDatePicker) {
        if parametrDatePicker.isEqual(self.picker) {
            lable.text = "Date : \(parametrDatePicker.date)"
        }
    }
}

