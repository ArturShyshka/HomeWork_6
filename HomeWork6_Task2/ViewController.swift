//
//  ViewController.swift
//  HomeWork6_Task2
//
//  Created by Artur Shyshka on 06.09.2022.
//

import UIKit

class ViewController: UIViewController, CustomViewTabBarDelegate {

    // MARK: - Outlets
    @IBOutlet weak var customViewTabBar: CustomViewTabBar!
    @IBOutlet weak var firstCustomMenuBlock: CustomMenuBlock!
    @IBOutlet weak var secondCustomMenuBlock: CustomMenuBlock!
    @IBOutlet weak var thirdCustomMenuBlock: CustomMenuBlock!
    
    // MARK: - Main
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customViewTabBar.delegate = self
        
        firstCustomMenuBlock.configure(labelText: "Розстрочка на карту", nameImage: "pie-chart", color: .systemGreen)
        secondCustomMenuBlock.configure(labelText: "Покупка частинами",nameImage: "paws", color: .systemPurple)
        thirdCustomMenuBlock.configure(labelText: "Архів",nameImage: "completed-task", color: .gray)
        
        firstCustomMenuBlock.layer.cornerRadius = 15
        secondCustomMenuBlock.layer.cornerRadius = 15
        thirdCustomMenuBlock.layer.cornerRadius = 15
        
    }
    
    // MARK: - Method Delegate
    func euroButtonPressed() {
        print("Euro")
    }
    
    func dollarButtonPressed() {
        print("Dollar")
    }

}

