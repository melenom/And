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
extension PWrapper where Base:UIButton {
   
    @discardableResult
    public func image(_ image:UIImage?,for state: UIControl.State)->PWrapper{
        self.base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func backgroundImage(_ image:UIImage?,for state: UIControl.State)->PWrapper{
        self.base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func color(_ color:UIColor?,for state: UIControl.State)->PWrapper{
        self.base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    public func font(_ font:UIFont,size:CGFloat)->PWrapper{
        self.base.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    public func titleInsets(_ insets:UIEdgeInsets)->PWrapper{
        self.base.titleEdgeInsets = insets
        return self
    }
   
    @discardableResult
    public func text(_ text:String?,for state: UIControl.State)->PWrapper{
        self.base.setTitle(text, for: state)
        return self
    }
    
    @discardableResult
    public func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event)->PWrapper{
        self.base.addTarget(target, action: action, for: controlEvents)
        return self
    }
    
    @discardableResult
    public func isEnabled(_ value:Bool)->PWrapper{
        self.base.isEnabled  = value
        return self
    }
    
    @discardableResult
    public func isSelected(_ state:Bool )->PWrapper{
        self.base.isSelected = state
        return self
    }
}
