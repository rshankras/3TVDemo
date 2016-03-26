//
//  SecondTVController.swift
//  3TVDemo
//
//  Created by Ravi Shankar on 26/03/16.
//  Copyright © 2016 Ravi Shankar. All rights reserved.
//

import UIKit

class SecondTVController: UITableViewController {
    
    var country: String?
    
    private let cars = ["Car1","Car2","Car3","Car4","Car5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let country = country {
            // do filtering based on country
            print(country)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SecondTVCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = cars[indexPath.row]
        
        return cell
    }
    
    // MARK:- PrepareForSegue
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedRow = tableView.indexPathForSelectedRow?.row
        let controller = segue.destinationViewController as? ThirdTVController
        controller!.car = cars[selectedRow!]
    }
}