//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Tommy Colella on 1/16/20.
//  Copyright © 2020 Tommy Colella. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var assignmentTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!



   func configureView() {
       // Update the user interface for the detail item
       if let assignment = self.detailItem {
          if assignmentTextField != nil {
             assignmentTextField.text = assignment.name
             subjectTextField.text = assignment.subject
             dueDateTextField.text = String(assignment.dueDate)
            descriptionTextField.text = assignment.description
          }
       }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

