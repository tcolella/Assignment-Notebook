//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Tommy Colella on 1/16/20.
//  Copyright © 2020 Tommy Colella. All rights reserved.
//

import UIKit

class Assignment: Codable {

       var name : String
        var subject :  String
        var dueDate : String
        var description : String
        
        init(name: String, subject: String, dueDate: String, description: String) {
            self.name = name
            self.subject = subject
            self.dueDate = dueDate
            self.description = description
        }
    }
