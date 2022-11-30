//
//  ViewController.swift
//  collectionView
//
//  Created by digital on 30/11/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collecView: UICollectionView!
    
    var data = ["1","2","3","4","5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.collecView.delegate = self
        self.collecView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collecView.dequeueReusableCell(withReuseIdentifier: "protoCell", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        //cell.layer.borderColor = CGColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        
        return cell
    }
    
    

    
}

