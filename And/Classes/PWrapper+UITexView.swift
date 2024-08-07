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
extension PWrapper where Base:UITextView {
    
    @discardableResult
    func color(_ color:UIColor?)-> PWrapper{
        self.base.textColor = color
        return self
    }

    @discardableResult
    func font(_ font:UIFont,size:CGFloat)-> PWrapper{
        self.base.font = font
        return self
    }
    
    @discardableResult
    func textContainerInset(_ inset:UIEdgeInsets)-> PWrapper{
        self.base.textContainerInset = inset
        return self
    }
    
    @discardableResult
    func returnKeyType(_ type:UIReturnKeyType)-> PWrapper{
        self.base.returnKeyType = type
        return self
    }
    
    @discardableResult
    func text(_ text:String)-> PWrapper{
        self.base.text = text
        return self
    }
    
    @discardableResult
    func delegate(_ delegate:UITextViewDelegate)-> PWrapper{
        self.base.delegate = delegate
        return self
    }
}
