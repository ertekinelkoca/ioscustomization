//
//  ViewController.swift
//  ioscustomization
//
//  Created by mac on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //in order to understand current preferences of the user
          //we need uıinterfacestyle comes from traticollenction
        
        //To allow to only light mode in our app, see below
        //it is valid only for this controller
        overrideUserInterfaceStyle = .light
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }
        else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }
        else {
            changeButton.tintColor = UIColor.blue
        }
        
        
        
    }

    @IBOutlet weak var changeButton: UIButton!
    
}

