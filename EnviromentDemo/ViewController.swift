//
//  ViewController.swift
//  EnviromentDemo
//
//  Created by ut-i02 on 12/05/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentConfiguration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as! String
        lblMessage.text = currentConfiguration
    }


}

