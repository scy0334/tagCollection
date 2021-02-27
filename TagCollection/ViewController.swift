//
//  ViewController.swift
//  TagCollection
//
//  Created by Si Choi on 2021/02/27.
//

import TTGTagCollectionView
import UIKit

class ViewController: UIViewController, TTGTextTagCollectionViewDelegate {

    let collectionView = TTGTextTagCollectionView()
    
    private var selections = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.alignment = .left
        collectionView.delegate = self
        
        view.addSubview(collectionView)
        
        let config = TTGTextTagConfig()
        config.backgroundColor = .white
        config.selectedBackgroundColor = .black
        
        config.textFont = UIFont.boldSystemFont(ofSize: 15.0)
        config.textColor = .black
        config.selectedTextColor = .white
        
        config.cornerRadius = 1.5
        config.exactHeight = 27.3
        
        config.borderColor = .black
        config.borderWidth = 2.3
        config.selectedBorderColor = .none
        

        config.shadowColor = .black
        config.shadowOffset = CGSize(width: 3.05, height: 3.05)
        config.shadowOpacity = 1
        config.shadowRadius = 0
        
        collectionView.addTags([
                                "Marketing", "Art & Design", "PM/PO", "Data Science", "Finance/Acoounting",
                                "HR", "Software Developer", "Media/Entertainment", "VC/Startup",
                                "Career Advice"
        ], with: config)
        
        collectionView.backgroundColor = .yellow
        collectionView.horizontalSpacing = 12.0
        collectionView.verticalSpacing = 12.0


        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        collectionView.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: 300)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
    
    func textTagCollectionView(_ textTagCollectionView: TTGTextTagCollectionView!, didTapTag tagText: String!, at index: UInt, selected: Bool, tagConfig config: TTGTextTagConfig!) {
        selections.append(tagText)
        print("\(selections)")
    }


}

