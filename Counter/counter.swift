//
//  counter.swift
//  Counter
//
//  Created by Thiago Tosetti Lopes on 09/03/16.
//  Copyright © 2016 Thiago Tosetti Lopes. All rights reserved.
//

import Foundation

class Counter {
    var count = 0
    
    func clear() {
        count = 0
    }
    
    func add(em value: Int = 1) {
        count += value
    }
}