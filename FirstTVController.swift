//
//  FirstTVController.swift
//  3TVDemo
//
//  Created by Ravi Shankar on 26/03/16.
//  Copyright © 2016 Ravi Shankar. All rights reserved.
//

import UIKit

class FirstTVController: UITableViewController {
    
    private let countries = ["Germany","Austria","France","Poland","Netharlands"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FirstTVCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = countries[indexPath.row]

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedRow = tableView.indexPathForSelectedRow?.row
        
        let controller = segue.destinationViewController as? SecondTVController
        controller!.country = countries[selectedRow!]
    }
}
