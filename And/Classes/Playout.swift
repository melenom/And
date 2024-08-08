//
//  layout.swift
//  And
//
//  Created by ZZZ on 2024/8/8.
//

import Foundation

extension PWrapper where Base:UIView {
    @discardableResult
    public func addSubview(_ view:Base,block:((_ make:Layout<Base>)->Void)? = nil)-> PWrapper {
        base.addSubview(view)
        if let block = block {
            view.translatesAutoresizingMaskIntoConstraints = false
            block(Layout(view))
        }
        return self
    }

    
    @discardableResult
    public func make(block:(_ make:Layout<Base>)->Void)-> PWrapper {
        base.translatesAutoresizingMaskIntoConstraints = false
        block(Layout(base))
        return self
    }
    
    @discardableResult
    public func remake(block:(Base)->Void)-> PWrapper {
        block(base)
        return self
    }
    
    @discardableResult
    public func remove()-> PWrapper {
       
        return self
    }
}

public struct Layout<Base> {
    let base:Base
    init(_ base: Base) {
        self.base = base
    }
}

public struct LayoutAnchor<anchorType> {
    let base:anchorType
    init(_ base: anchorType) {
        self.base = base
    }
}


extension Layout where Base:UIView {
    public var centerX: LayoutAnchor<NSLayoutXAxisAnchor> {
        return LayoutAnchor(base.centerXAnchor)
    }
    public var centerY: LayoutAnchor<NSLayoutYAxisAnchor> {
        return LayoutAnchor(base.centerYAnchor)
    }
    public var left: LayoutAnchor<NSLayoutXAxisAnchor> {
        return LayoutAnchor( base.leftAnchor)
    }
    public var right: LayoutAnchor<NSLayoutXAxisAnchor> {
        return LayoutAnchor(base.rightAnchor)
    }
    public var top: LayoutAnchor<NSLayoutYAxisAnchor> {
        return LayoutAnchor(base.topAnchor)
    }
    public var bottom: LayoutAnchor<NSLayoutYAxisAnchor> {
        return LayoutAnchor(base.bottomAnchor)
    }
}

extension LayoutAnchor where anchorType:NSLayoutAnchor<NSLayoutXAxisAnchor> {
    @discardableResult
    public func equalTo(_ anchor:LayoutAnchor)->LayoutConstraint<NSLayoutConstraint>{
        self.base.constraint(equalTo: anchor.base).isActive(true)
    }
    
    @discardableResult
    public func lessThanOrEqualTo(_ anchor:LayoutAnchor)->LayoutConstraint<NSLayoutConstraint>{
        self.base.constraint(lessThanOrEqualTo: anchor.base).isActive(true)
    }
    @discardableResult
    public func greaterThanOrEqualTo(_ anchor:LayoutAnchor)->LayoutConstraint<NSLayoutConstraint>{
        self.base.constraint(greaterThanOrEqualTo: anchor.base).isActive(true)
    }
}

extension LayoutAnchor where anchorType:NSLayoutAnchor<NSLayoutYAxisAnchor> {
    @discardableResult
    public func equalTo(_ anchor:LayoutAnchor)->LayoutConstraint<NSLayoutConstraint>{
        self.base.constraint(equalTo: anchor.base).isActive(true)
    }
    @discardableResult
    public func lessThanOrEqualTo(_ anchor:LayoutAnchor)->LayoutConstraint<NSLayoutConstraint>{
        self.base.constraint(lessThanOrEqualTo: anchor.base).isActive(true)
    }
    @discardableResult
    public func greaterThanOrEqualTo(_ anchor:LayoutAnchor)->LayoutConstraint<NSLayoutConstraint>{
        self.base.constraint(greaterThanOrEqualTo: anchor.base).isActive(true)
    }
}



extension PProtocol {
    public var nice:Layout<Self>{
        get{Layout(self)}
        set{}
    }
}

extension NSLayoutConstraint {
    @discardableResult
    func isActive(_ value:Bool) -> LayoutConstraint<NSLayoutConstraint> {
        isActive = value
        return LayoutConstraint(self)
    }
}

public struct LayoutConstraint<Base> {
    let base:Base
    init(_ base: Base) {
        self.base = base
    }
}

extension LayoutConstraint where Base:NSLayoutConstraint {
    @discardableResult
    public func offSet(_ value:CGFloat) ->LayoutConstraint {
        base.constant = value
        return self
    }
    
    @discardableResult
    public func priority(_ value:UILayoutPriority) ->LayoutConstraint {
        base.priority = value
        return self
    }
}
