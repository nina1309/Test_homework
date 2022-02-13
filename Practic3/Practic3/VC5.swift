//
//  VC5.swift
//  Practic3
//
//  Created by Nina on 13.02.2022.
//

import Foundation
import UIKit
class VC5: UIViewController{
    private lazy var lable: UILabel = {
 let lable = UILabel()
        lable.text = "Страница 3"
        lable.textColor = .black
        lable.font = .systemFont(ofSize: 30)
        
          return lable
    }()

   override func viewDidLoad() {
       super.viewDidLoad()
       view.backgroundColor = .red
       
       

       setupSub()
       setupConstraints()
   }
   func setupSub(){
      
       view.addSubview(lable)
   }
   func setupConstraints(){
       lable.translatesAutoresizingMaskIntoConstraints = false
      lable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
       lable.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
   }
}
