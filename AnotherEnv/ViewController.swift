//
//  ViewController.swift
//  AnotherEnv
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
        var msg = ""
        switch buildConf.environment {
        case .debugDevelopment, .releaseDevelopment:
            msg = "Development"
        case .debugStaging, .releaseStaging:
            msg = "Staging"
        case .debugProduction, .releaseProduction:
            msg = "Production"
        }
        
        lblMessage.text = "Another Env - \(msg)"
    }


}

