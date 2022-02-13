//
//  4.swift
//  Practic3
//
//  Created by Nina on 13.02.2022.
//

import Foundation
import UIKit
class VC4: UIViewController{
    private lazy var lable: UILabel = {
 let lable = UILabel()
        lable.text = "Страница 2"
        lable.textColor = .black
        lable.font = .systemFont(ofSize: 30)
        
          return lable
    }()
 private lazy var button: UIButton = {
       let button = UIButton()
     
     button.setTitle("Добавить цвета!", for: .normal)
     button.setTitleColor(.black, for: .normal)
     
     
     button.addTarget(self, action: #selector(onClick(sender:)), for:.touchUpInside)
       return button
   }()
   
   @objc func onClick(sender: UIButton?){
       navigationController?.pushViewController(VC5(), animated: true)
   }
   override func viewDidLoad() {
       super.viewDidLoad()
       view.backgroundColor = .systemPink
       
       

       setupSub()
       setupConstraints()
   }
   func setupSub(){
       view.addSubview(button)
       view.addSubview(lable)
   }
   func setupConstraints(){
       button.translatesAutoresizingMaskIntoConstraints = false
       button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
       lable.translatesAutoresizingMaskIntoConstraints = false
       lable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       lable.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
   }
}
