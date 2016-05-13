//
//  DataStructure.swift
//  HitoryTimeLine
//
//  Created by Normand Martin on 16-05-08.
//  Copyright © 2016 Normand Martin. All rights reserved.
//

import Foundation
struct HistoricalFacts{
    var year: String
    var event: String
    var date: String
    var description: String
    var n: Int
    
    init (n: Int, historicalFact: [[String]]){
        self.n = n
        year = historicalFact[n][0]
        event = historicalFact[n][1]
        date = historicalFact[n][2]
        description =  historicalFact[n][3]
    }
}



