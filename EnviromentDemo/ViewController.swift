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
        let buildConf = BuildConfiguration.shared
        
        switch buildConf.environment {
        case .debugDevelopment, .releaseDevelopment:
            lblMessage.text = "Development"
        case .debugStaging, .releaseStaging:
            lblMessage.text = "Staging"
        case .debugProduction, .releaseProduction:
            lblMessage.text = "Production"
        }
    }


}

