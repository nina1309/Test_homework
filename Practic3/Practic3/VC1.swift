//
//  VC1.swift
//  Practic3
//
//  Created by Nina on 13.02.2022.
//

import Foundation
 import UIKit
class VC1: UIViewController{
    
  private lazy var button: UIButton = {
        let button = UIButton()
      
      button.setTitle("Добавить цвета!", for: .normal)
      button.setTitleColor(.black, for: .normal)
      
      
      button.addTarget(self, action: #selector(onClick(sender:)), for:.touchUpInside)
        return button
    }()
    
    @objc func onClick(sender: UIButton?){
        navigationController?.pushViewController(VC2(), animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray

        setupSub()
        setupConstraints()
    }
    func setupSub(){
        view.addSubview(button)
    }
    func setupConstraints(){
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
