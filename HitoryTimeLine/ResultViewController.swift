//
//  ResultViewController.swift
//  HitoryTimeLine
//
//  Created by Normand Martin on 16-05-11.
//  Copyright © 2016 Normand Martin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var noOfResultFacts = 0
    var noOfDateResults = 0
    var result = [[""]]
    var dateResult = [[""]]
    var nn = 0
    @IBOutlet weak var resultTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        for _ in result{
        let resultFact = HistoricalFacts(n: nn, historicalFact: result)
        //let resultDate = HistoricalFacts(n: 0, historicalFact: dateResult)
        print(resultFact.year)
        print(resultFact.event)
        print(resultFact.description)
        nn = nn + 1
        //resultTextView.text = String(finalResult.flatMap{$0})
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
