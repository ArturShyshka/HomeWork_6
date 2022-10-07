//
//  CustomBackgroundView.swift
//  HomeWork6_Task2
//
//  Created by Artur Shyshka on 10.09.2022.
//

import UIKit

class CustomBackgroundView: UIView {
    
    // MARK: - Outlets
    @IBOutlet weak var backgroundView: UIView!

    // MARK: - Main
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInitIn()
    }
        
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInitIn()
    }
        
    // MARK: - Functions
    func commonInitIn() {
        Bundle.main.loadNibNamed("CustomBackgroundView", owner: self, options: nil)
        backgroundView.fixInView(self)
        
        // add gradient background
        let topColor = UIColor(red: 73.0 / 255.0, green: 156.0 / 255.0, blue: 91.0 / 255.0, alpha: 1.0).cgColor
        let bottomColor = UIColor(red: 54.0 / 255.0, green: 106.0 / 255.0, blue: 100.0 / 255.0, alpha: 1.0).cgColor
        
        addGradientBackground(customView: backgroundView, colorTop: topColor, colorBottom: bottomColor)
            
    }

}
