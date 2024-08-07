/*
 MIT License

 Copyright (c) 2024 melenom

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/

import Foundation
extension PWrapper where Base:UIView {

    @discardableResult
    public func backgroundColor(_ color:UIColor)->PWrapper{
        self.base.backgroundColor = color
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ radius:CGFloat)->PWrapper{
        self.base.layer.cornerRadius = radius
        return self
    }
    
    @discardableResult
    public func maskedCorners(_ mask:CACornerMask)->PWrapper{
        self.base.layer.maskedCorners = mask
        return self
    }
    
    @discardableResult
    public func isHidden(_ state:Bool )->PWrapper{
        self.base.isHidden = state
        return self
    }
    
    @discardableResult
    public func addGestureRecognizer(_ gesture:UIGestureRecognizer )->PWrapper{
        self.base.addGestureRecognizer(gesture)
        return self
    }
    
    @discardableResult
    public func masksToBounds(_ state:Bool )->PWrapper{
        self.base.layer.masksToBounds = state
        return self
    }
   
    @discardableResult
    public func frame(_ frame:CGRect)->PWrapper{
        self.base.frame = frame
        return self
    }
   
    @discardableResult
    public func borderColor(_ color:UIColor?)->PWrapper{
        self.base.layer.borderColor = color?.cgColor
        return self
    }
   
    @discardableResult
    public func borderWidth(_ value:CGFloat)->PWrapper{
        self.base.layer.borderWidth = value
        return self
    }
   
    @discardableResult
    public func interactionEnabled(_ value:Bool)->PWrapper{
        self.base.isUserInteractionEnabled  = value
        return self
    }
    
    @discardableResult
    public func alpha(_ alpha:CGFloat)->PWrapper{
        self.base.alpha = alpha
        return self
    }
   
    @discardableResult
    public func transform(_ transform:CGAffineTransform)->PWrapper{
        self.base.transform = transform
        return self
    }
    
    
}
