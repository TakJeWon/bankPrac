//
//  MainPageViewController.swift
//  bankPrac
//
//  Created by Tak_iMac on 2021/11/18.
//

import UIKit

class MainPageViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let mainCell = MainCollectionViewCell()
    let mainCellModel = accountModels().mainCellInformation

    //맨 첫 페이지
    //기능
    // 1. 나의 계좌 쭉 나옴
    // 2. 주계좌 맨 위에 (선택할 수 있음)
    // 3. 컬렉션 뷰로 구성
    // 4. ...
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        mainCell.setupMainCellFlowLayout(view: self.collectionView)
    
    }
    
}

extension MainPageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainCellModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let mainAccountCell = collectionView.dequeueReusableCell(withReuseIdentifier: mainCell.mainCellIdentifier, for: indexPath) as? MainCollectionViewCell else {return UICollectionViewCell()}
        
        mainAccountCell.mainCellSettings(cell: mainAccountCell, index: indexPath.row)
        
        return mainAccountCell
    }
}

