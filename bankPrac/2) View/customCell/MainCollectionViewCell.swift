//
//  MainCollectionViewCell.swift
//  bankPrac
//
//  Created by Tak_iMac on 2021/11/18.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    //main 화면 주계좌 cell
    
    // 기능
    // 1. 주계좌 일 때 이 cell을 선택해서 사용하기 -> 아님! 셀을 다 똑같다. -> **clear**
    // 2. account Name label 옆에 별 표시 (주계좌) -> 일단 설정은 했는데, 계좌 순서에 따라로 바꿔야 할듯 (계좌 순서 0이면 star.fill)
    // 3. 이체 버튼 누르면 이체할 수 있게
    // 4. 카드 이용 내역 버튼 누르면 내역 볼 수 있게
    // 5. Bank balance 에 잔액 표시
    // 6. account number label (계좌번호) 누르면 복사
    
    // Main.storyboard 설정 사항
    // 1) account name constraints (top:30, left:30, bottom(accountnum):5, right(StarImage):5)
    // 2) account number constraints (left: 30)
    // 3) account balance constraints (x center, y center)
    // 4) star image (top: 30, color: same with cell color)
    // 5) buttons (constraints 0 for bottom and left/right for each. there is the line in the middle, and their constraints is 0 each. -> let's find another way!)
    // 5-1) buttons default(Status)
    // 6) cell identifier("MainAccountCell")
    
    
    @IBOutlet weak var accountNameLabel: UILabel!
    @IBOutlet weak var accountNumberLabel: UILabel!
    @IBOutlet weak var accountBalanceLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var seperateLine: UILabel!
    
    // connected with Main.Storyboard
    let mainCellIdentifier = "MainAccountCell"
    
    let accountModel = accountModels()
    let colorchip = ColorChip()
    
    func mainCellSettings(cell: MainCollectionViewCell, index: Int) {
        //cell decorate(radius, background color, and maybe the shadow)
        cell.layer.cornerRadius = 10

        //set data model to cell components
        cell.accountNameLabel.text = accountModel.mainCellInformation[index].accountName
        cell.accountNumberLabel.text = accountModel.mainCellInformation[index].accountNum
        cell.accountBalanceLabel.text = accountModel.mainCellInformation[index].accountBalance
        cell.backgroundColor = accountModel.mainCellInformation[index].cellBackgroundColor
        
        //star image status which depends on what is the main account
        let cellStatus = accountModel.mainCellInformation[index].mainStatus
        
        if (cellStatus == true) {
            cell.starImageView.image = UIImage(systemName: "star.fill")
        } else {
            cell.starImageView.image = UIImage(systemName: "star")
        }
        
    }
}

extension MainCollectionViewCell: UICollectionViewDelegateFlowLayout {
    
    public func setupMainCellFlowLayout(view: UICollectionView) {
        // padding between cells
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 20
        flowLayout.minimumLineSpacing = 10
        
        //cell size
        let halfWidth = UIScreen.main.bounds.width
        flowLayout.itemSize = CGSize(width: halfWidth - 20, height: halfWidth / 2)
        
        view.collectionViewLayout = flowLayout
    }
    
    
}
