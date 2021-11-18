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
    // 2. account Name label 옆에 별 표시 (주계좌)
    // 3. 이체 버튼 누르면 이체할 수 있게
    // 4. 카드 이용 내역 버튼 누르면 내역 볼 수 있게
    // 5. Bank balance 에 잔액 표시
    // 6. account number label (계좌번호) 누르면 복사
    
    
    @IBOutlet weak var accountNameLabel: UILabel!
    @IBOutlet weak var accountNumberLabel: UILabel!
    @IBOutlet weak var accountBalanceLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    
    // connected with Main.Storyboard
    let mainCellIdentifier = "MainAccountCell"
    
    
    
}
