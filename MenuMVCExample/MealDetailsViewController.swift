//
//  MealDetailsViewController.swift
//  MenuMVCExample
//
//  Created by Артем Репин on 06.09.2021.
//

import UIKit

class MealDetailsViewController: UIViewController {
    
    @IBOutlet var mealStackView: UIStackView!
    @IBOutlet var mealImageView: UIImageView! {
        didSet {
            mealImageView.layer.cornerRadius = 50
            mealImageView.contentMode = .scaleToFill
        }
    }
    
    @IBOutlet var mealNameLabel: UILabel!
    @IBOutlet var mealPriceLabel: UILabel!
    @IBOutlet var mealRatingLabel: UILabel!
    
    private let meal = Meal.getMeal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let descriptionVC = navigationVC.topViewController as? DescriptionViewController else { return }
        descriptionVC.meal = meal
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        setupSize(with: size)
    }
}

// MARK: - Private Methods
extension MealDetailsViewController {
    private func setupUI() {
        mealImageView.image = UIImage(named: meal.image)
        mealNameLabel.text = meal.name
        mealPriceLabel.text = meal.price
        mealRatingLabel.text = meal.ratingBar
    }
    
    private func setupSize(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
    }
}
