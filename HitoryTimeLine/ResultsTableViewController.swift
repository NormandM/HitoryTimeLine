//
//  ResultsTableViewController.swift
//  HitoryTimeLine
//
//  Created by Normand Martin on 16-05-13.
//  Copyright © 2016 Normand Martin. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    var noOfDateResults = 0
    var noOfResultFacts = 0
    var finalResult = [""]
    var result = [[""]]
    var dateResult = [[""]]
    var resulTrie: [String] = [""]
    
    @IBOutlet weak var size: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 68.0
        tableView.rowHeight = UITableViewAutomaticDimension
        resulTrie = result.flatMap{$0}
        finalResult = resulTrie.filter{$0 != "0"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return finalResult.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("resultElement", forIndexPath: indexPath)
        
        cell.textLabel?.text = finalResult[indexPath.row]
        return cell
    }
    




}
