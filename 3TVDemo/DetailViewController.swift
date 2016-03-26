//
//  DetailViewController.swift
//  3TVDemo
//
//  Created by Ravi Shankar on 26/03/16.
//  Copyright © 2016 Ravi Shankar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var model: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let model = model {
            // do filtering based on car
            displayLabel.text = model
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
