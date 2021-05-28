//
//  ViewController.swift
//  test
//
//  Created by Qianyi Wang on 2021/5/28.
//

import UIKit

class ViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarBUttonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView)
}
