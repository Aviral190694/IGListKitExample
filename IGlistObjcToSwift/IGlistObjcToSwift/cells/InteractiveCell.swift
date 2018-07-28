//
//  InteractiveCell.swift
//  IGlistObjcToSwift
//
//  Created by Aviral Aggarwal on 28/07/18.
//  Copyright © 2018 Aviral Aggarwal. All rights reserved.
//

import UIKit

class InterativeCell: UICollectionViewCell {
  
  fileprivate var likeButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("Like", for: UIControlState())
    button.setTitleColor(UIColor(red: 28/255.0, green: 30/255.0, blue: 28/255.0, alpha: 1.0), for: UIControlState())
    button.sizeToFit()
    button.backgroundColor = .clear
    return button
  }()
  
  fileprivate var commentButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("Comment", for: UIControlState())
    button.setTitleColor(UIColor(red: 28/255.0, green: 30/255.0, blue: 28/255.0, alpha: 1.0), for: UIControlState())
    button.sizeToFit()
    button.backgroundColor = .clear
    return button
  }()
  
  fileprivate var shareButton: UIButton = {
    let button = UIButton(type: .custom)
    button.setTitle("Share", for: UIControlState())
    button.setTitleColor(UIColor(red: 28/255.0, green: 30/255.0, blue: 28/255.0, alpha: 1.0), for: UIControlState())
    button.sizeToFit()
    button.backgroundColor = .clear
    return button
  }()
  
  fileprivate var seperator: CALayer = {
    let sep = CALayer()
    sep.backgroundColor = UIColor(red: 200/255.0, green: 199/255.0, blue: 204/255.0, alpha: 1).cgColor
    return sep
  }()
  
  
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    contentView.addSubview(likeButton)
    contentView.addSubview(commentButton)
    contentView.addSubview(shareButton)
    contentView.layer.addSublayer(seperator)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    let bounds = self.contentView.bounds
    let leftPadding: CGFloat = 8.0
  
    self.likeButton.frame =  CGRect(x: leftPadding, y: 0, width: self.likeButton.frame.width, height: bounds.size.height)
    
    self.commentButton.frame =  CGRect(x: leftPadding + self.likeButton.frame.maxX, y: 0, width: self.commentButton.frame.width, height: bounds.size.height)
    
    self.shareButton.frame = CGRect(x: leftPadding + self.commentButton.frame.maxX, y: 0, width: self.shareButton.frame.width, height: bounds.size.height)
    
    let height: CGFloat = 0.5;
    self.seperator.frame = CGRect(x: leftPadding, y: bounds.size.height - height, width: bounds.size.width - leftPadding, height: height)
    
  }
  
}
