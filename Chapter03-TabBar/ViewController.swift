//
//  ViewController.swift
//  Chapter03-TabBar
//
//  Created by prologue on 2017. 6. 7..
//  Copyright © 2017년 rubypaper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 1
    let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
    // 2
    title.text = "첫 번째 탭"
    title.textColor = UIColor.red // 텍스트는 빨간색으로
    title.textAlignment = .center // 레이블 내에서 중앙 정렬로
    title.font = UIFont.boldSystemFont(ofSize: 14) // 폰트는 System Font, 14pt
    
    // 3
    title.sizeToFit() // 콘텐츠의 내용에 맞게 레이블 크기 변경
    
    // 4
    title.center.x = self.view.frame.width / 2 // x 축의 중앙에 오도록
    
    let frame = CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: self.view.frame.size.height+50)
    self.tabBarController?.tabBar.frame = frame
    
    self.view.addSubview(title)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.┝------------ 애니메이션이 자동으로 처리하는 부분 --------------┥
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    let tabBar = self.tabBarController?.tabBar
    //tabBar?.isHidden = (tabBar?.isHidden == true) ? false : true
    UIView.animate(withDuration: TimeInterval(0.15)) {
      // alpha 값이 0이면 1로, 1이면 0으로 바꾸어 준다.
      // 호출될 때마다 점점 투명해졌다가 점점 진해질 것이다.
      tabBar?.alpha = ( tabBar?.alpha == 0 ? 1 : 0 )
    }
  }
}

