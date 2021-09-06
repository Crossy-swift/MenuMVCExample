//
//  DescriptionViewController.swift
//  MenuMVCExample
//
//  Created by Артем Репин on 06.09.2021.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet var mealDescriprionLabel: UILabel!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = meal.name
        mealDescriprionLabel.text = meal.description
        
    }
}
