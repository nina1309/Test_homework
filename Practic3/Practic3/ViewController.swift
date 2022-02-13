//
//  ViewController.swift
//  Practic3
//
//  Created by Nina on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var lable: UILabel = {
 var lable = UILabel()
        lable.text = ""
        lable.textColor = .black
        lable.font = .systemFont(ofSize: 25)
        
          return lable
    }()
  private lazy var button: UIButton = {
        let button = UIButton()
      
      button.setTitle("Время!", for: .normal)
      button.setTitleColor(.black, for: .normal)
      
      
      button.addTarget(self, action: #selector(onClick(sender:)), for:.touchUpInside)
        return button
    }()
    
    @objc func onClick(sender: UIButton?){
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        if hour < 10 {
            let hour1 = "0\(String(hour)) "
            lable.text = " \(hour1) :"
        }else{
        let hour1 = "\(String(hour))"
            lable.text = " \(hour1) :"
        }
        if minutes < 10 {
            let minutes1 = "0 \(String(minutes)) "
            lable.text! += " \(minutes1) :"
        }else{
        let minutes1 = "\(String(minutes))"
            lable.text! += " \(minutes1) :"
        }
        if seconds < 10 {
            let seconds1 = "0 \(String(seconds)) "
            lable.text! += " \(seconds1)"
        }else{
        let seconds1 = "\(String(seconds))"
            lable.text! += " \(seconds1) "
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray

        setupSub()
        setupConstraints()
    }
    func setupSub(){
        view.addSubview(lable)
        view.addSubview(button)
    }
    func setupConstraints(){
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        lable.translatesAutoresizingMaskIntoConstraints = false
       lable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lable.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 30).isActive = true
    }
}
