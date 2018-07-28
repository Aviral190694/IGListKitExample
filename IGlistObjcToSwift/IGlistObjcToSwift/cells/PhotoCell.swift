//
//  Photo.cell.swift
//  IGlistObjcToSwift
//
//  Created by Aviral Aggarwal on 28/07/18.
//  Copyright © 2018 Aviral Aggarwal. All rights reserved.
//

import UIKit

class PhotoCell : UICollectionViewCell {
  
  fileprivate var view: UIView = {
    let photoView = UIView()
    photoView.backgroundColor =  UIColor(red: 4/255.0, green: 170/255.0, blue: 166/255.0, alpha: 1.0)
    return photoView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(view)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    self.view.frame = self.contentView.frame
  }
  
}
