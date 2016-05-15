//
//  ViewController.swift
//  HitoryTimeLine
//
//  Created by Normand Martin on 16-05-08.
//  Copyright © 2016 Normand Martin. All rights reserved.
//

import UIKit
import Foundation

class ParamaterSearchViewControler: UIViewController {
    @IBOutlet weak var keyWord: UILabel!
    @IBOutlet weak var keyDate: UILabel!
    
    @IBOutlet weak var keyWordEntry: UITextField!
    @IBOutlet weak var keyDateEntry: UITextField!
    var result = [[""]]
    var dateResult = [[""]]
    var noOfDateResults = 0
    var noOfResultFacts = 0
    var historyFact = [[""]]
    override func viewDidLoad() {
        super.viewDidLoad()
        keyDateEntry.text = ""
        keyWordEntry.text = ""

        if let plistPath = NSBundle.mainBundle().pathForResource("TotalTimeLine", ofType: "plist"),
            let historyTimeLineArray = NSArray(contentsOfFile: plistPath){
            historyFact = historyTimeLineArray as! [[String]]

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func enterText(sender: UITextField) {
        result = historyFact.filter{String($0).localizedCaseInsensitiveContainsString(keyWordEntry.text!)}
        dateResult = historyFact.filter{$0[0].localizedCaseInsensitiveContainsString(keyDateEntry.text!)}
        noOfDateResults = dateResult.count
        noOfResultFacts = result.count
        
        

    }
  
    
 
    @IBAction func searchbutton(sender: AnyObject) {

   
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showResultsSegue"{
            let controller = segue.destinationViewController as! ResultsTableViewController
            controller.noOfDateResults = noOfDateResults
            controller.noOfResultFacts = noOfResultFacts
            controller.result = result
            controller.dateResult = dateResult
        }
    }



}

