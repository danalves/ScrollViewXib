//
//  ViewController.swift
//  ScrollViewXib
//
//  Created by Usuário Convidado on 19/05/18.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.setTitle("Abrir nova tela", for: .normal)
        button.frame = CGRect(x: (view.frame.size.width - 120)/2, y: 200, width: 120, height: 30)
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector (showSecondScreen), for: UIControlEvents.touchUpInside)
        view.addSubview(button)
        
    }

    @objc
    func showSecondScreen() {
        let secondViewController = SecondViewController(nibName: "SecondViewController", bundle: nil)
//        present(secondViewController, animated: true, completion: nil)
        navigationController?.show(secondViewController, sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

