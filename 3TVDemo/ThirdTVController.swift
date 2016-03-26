//
//  ThirdTVController.swift
//  3TVDemo
//
//  Created by Ravi Shankar on 26/03/16.
//  Copyright © 2016 Ravi Shankar. All rights reserved.
//

import UIKit

class ThirdTVController: UITableViewController {
    
    var car: String?
    
    let models = ["Model1","Model2","Model3","Model4","Model5","Model6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let car = car {
            // do filtering based on car
            print(car)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ThirdTVCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = models[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedRow = tableView.indexPathForSelectedRow?.row
        
        let controller = segue.destinationViewController as? DetailViewController
        controller!.model = models[selectedRow!]
    }
}