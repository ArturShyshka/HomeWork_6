//
//  CustomMenuBlock.swift
//  HomeWork6_Task2
//
//  Created by Artur Shyshka on 08.09.2022.
//

import UIKit

class CustomMenuBlock: UIView {
    
    // MARK: - Outlets
    @IBOutlet weak var menuBlockView: UIView!
    @IBOutlet weak var menuImageView: UIImageView!
    @IBOutlet weak var menuLabelView: UILabel!
    
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
        Bundle.main.loadNibNamed("CustomMenuBlock", owner: self, options: nil)
        menuBlockView.fixInView(self)
            
    }
    
    func configure(labelText: String, nameImage: String, color: UIColor) {
        menuLabelView.text = labelText
        menuLabelView.numberOfLines = 2
        
        let image = UIImage(named: nameImage)
        menuImageView.image = image
        menuImageView.backgroundColor = color
        menuImageView.layer.cornerRadius = menuImageView.frame.height / 2
        menuBlockView.addSubview(menuImageView)
    }

}
