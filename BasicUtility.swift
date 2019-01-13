//
//  BasicUtility.swift
//  Green Hands
//
//  Created by MacBook Pro on 21/04/18.
//  Copyright © 2018 indrajit. All rights reserved.
//

import UIKit


extension UIView{
    
    
    func setAnchors(top:NSLayoutYAxisAnchor?,bottom:NSLayoutYAxisAnchor?,left:NSLayoutXAxisAnchor?,right:NSLayoutXAxisAnchor?,topConstant:CGFloat = 0,bottomConstant:CGFloat = 0,leftConstant:CGFloat = 0,rightConstant:CGFloat = 0){
        if let value = left{
            setLeft(with: value, constant: leftConstant)
        }
        if let value = right{
            setRight(with: value, constant: rightConstant)
        }
        if let value = top{
            setTop(with: value, constant: topConstant)
        }
        if let value = bottom{
            setBottom(with: value, constant: bottomConstant)
        }
    }
    
    
    
    func setAnchors(top:NSLayoutYAxisAnchor?,bottom:NSLayoutYAxisAnchor?,left:NSLayoutXAxisAnchor?,right:NSLayoutXAxisAnchor?){
        if let value = left{
            setLeft(with: value, constant: 0)
        }
        if let value = right{
            setRight(with: value, constant: 0)
        }
        if let value = top{
            setTop(with: value, constant: 0)
        }
        if let value = bottom{
            setBottom(with: value, constant: 0)
        }
    }
    
    
    
    func setHeight(height:CGFloat){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    func setWidth(width:CGFloat){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    func setHeightAndWidth(height:CGFloat,width:CGFloat){
        setHeight(height: height)
        setWidth(width: width)
    }
    
    
    func setRight(with:NSLayoutXAxisAnchor){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.rightAnchor.constraint(equalTo: with).isActive = true
    }
    func setRight(with:NSLayoutXAxisAnchor,constant:CGFloat){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.rightAnchor.constraint(equalTo: with, constant: constant).isActive = true
    }
    func setLeft(with:NSLayoutXAxisAnchor){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leftAnchor.constraint(equalTo: with).isActive = true
    }
    func setLeft(with:NSLayoutXAxisAnchor,constant:CGFloat){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.leftAnchor.constraint(equalTo: with, constant: constant).isActive = true
    }
    
   
    func setTop(with:NSLayoutYAxisAnchor){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: with).isActive = true
    }
    func setTop(with:NSLayoutYAxisAnchor,constant:CGFloat){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: with, constant: constant).isActive = true
    }
    func setBottom(with:NSLayoutYAxisAnchor){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(equalTo: with).isActive = true
    }
    func setBottom(with:NSLayoutYAxisAnchor,constant:CGFloat){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.bottomAnchor.constraint(equalTo: with, constant: constant).isActive = true
    }
    
    
    func setFullOnSuperView(){
        if let superViewOfThis = superview{
            self.setTop(with: superViewOfThis.topAnchor)
            self.setBottom(with: superViewOfThis.bottomAnchor)
            self.setLeft(with: superViewOfThis.leftAnchor)
            self.setRight(with: superViewOfThis.rightAnchor)
        }
    }
    
    func setCenterY(){
        if let superViewOfThis = superview{
            self.translatesAutoresizingMaskIntoConstraints = false
            self.centerYAnchor.constraint(equalTo: superViewOfThis.centerYAnchor, constant: 0).isActive = true
        }
    }
    
    func setCenterY(constant:CGFloat){
        if let superViewOfThis = superview{
            self.translatesAutoresizingMaskIntoConstraints = false
            self.centerYAnchor.constraint(equalTo: superViewOfThis.centerYAnchor, constant: constant).isActive = true
        }
    }
    
    
    func setCenterX(){
        if let superViewOfThis = superview{
            self.translatesAutoresizingMaskIntoConstraints = false
            self.centerXAnchor.constraint(equalTo: superViewOfThis.centerXAnchor, constant: 0).isActive = true
        }
    }
    
    func setCenterX(constant:CGFloat){
        if let superViewOfThis = superview{
            self.translatesAutoresizingMaskIntoConstraints = false
            self.centerXAnchor.constraint(equalTo: superViewOfThis.centerXAnchor, constant: constant).isActive = true
        }
    }
    
    func setCenter(){
        setCenterX()
        setCenterY()
    }
    
    func setCenter(xConstant:CGFloat,yConstant:CGFloat){
        setCenterX(constant: xConstant)
        setCenterY(constant: yConstant)
    }
    
    
}

extension UIColor{
    static func rgb(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat = 1)->UIColor{
        return UIColor.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}



extension String{
   
    func addAtributes(color:UIColor)->NSAttributedString{
        let atString = NSMutableAttributedString()
        atString.append(NSAttributedString(string: self, attributes: [NSAttributedStringKey.foregroundColor:color]))
        return atString
    }
    
    func addAtributes(font:UIFont)->NSAttributedString{
        let atString = NSMutableAttributedString()
        atString.append(NSAttributedString(string: self, attributes: [NSAttributedStringKey.font:font]))
        return atString
    }
    
    func addAtributes(color:UIColor,font:UIFont,paragraph:NSParagraphStyle)->NSAttributedString{
        let atString = NSMutableAttributedString()
        atString.append(NSAttributedString(string: self, attributes: [NSAttributedStringKey.font:font,NSAttributedStringKey.foregroundColor:color,NSAttributedStringKey.paragraphStyle:paragraph]))
        return atString
    }

}











class BaseCellForCV:UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){}
    
}


class BaseCellForTV:UITableViewCell{
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setUpViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setUpViews(){}
}

extension UILabel {
    func textDropShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 1, height: 2)
    }
}


extension UIViewController{
    
    
    func push(dv:UIViewController){
        self.navigationController?.pushViewController(dv, animated: true)
    }
    
    
    
}
