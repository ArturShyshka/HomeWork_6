//
//  CustomViewTabBar.swift
//  HomeWork6_Task2
//
//  Created by Artur Shyshka on 06.09.2022.
//

import Foundation
import UIKit

class CustomViewTabBar: UIView {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tabBarView: UIView!
    @IBOutlet weak var dollarButton: UIButton!
    @IBOutlet weak var euroButton: UIButton!
    
    // MARK: - Properties
    
    weak var delegate: CustomViewTabBarDelegate?
    
    // MARK: - Main
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
       
    
    // MARK: - Functions
    func commonInit() {
        Bundle.main.loadNibNamed("CustomViewTabBar", owner: self, options: nil)
        tabBarView.fixInView(self)
        
        // dolarButton design
        dollarButton.layer.cornerRadius = 15
        dollarButton.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        dollarButton.clipsToBounds = true
        dollarButton.alpha = 0.6
            
        // euroButton design
        euroButton.layer.cornerRadius = 15
        euroButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        euroButton.clipsToBounds = true
        euroButton.alpha = 0.6
            
        // add gradient background
        let topColor = UIColor(red: 75.0 / 255.0, green: 97.0 / 255.0, blue: 119.0 / 255.0, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 50.0 / 255.0, green: 65.0 / 255.0, blue: 82.0 / 255.0, alpha: 1.0).cgColor
            
        addGradientBackground(customView: tabBarView, colorTop: topColor, colorBottom: bottomColor)
            
        }
    
    // MARK: - IBActions
    @IBAction func euroButtonPressed(_ sender: Any) {
        delegate?.euroButtonPressed()
    }
    
    @IBAction func dollarButtonPressed(_ sender: Any) {
        delegate?.dollarButtonPressed()
    }
}
