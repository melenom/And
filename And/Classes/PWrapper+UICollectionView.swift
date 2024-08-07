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
extension PWrapper where Base:UICollectionView {
    
    @discardableResult
    func layout(block:@escaping(UICollectionViewFlowLayout)->Void)->PWrapper{
        let layout = UICollectionViewFlowLayout()
        block(layout)
        self.base.collectionViewLayout = layout
        return self
    }
   
    @discardableResult
    func dataSource(_ dataSource:UICollectionViewDataSource)-> PWrapper{
        self.base.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ delegate:UICollectionViewDelegate)-> PWrapper{
        self.base.delegate = delegate
        return self
    }
    
    @discardableResult
    func register(_ cellClass: AnyClass?, _ identifier: String)-> PWrapper{
        self.base.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func contentInset(_ contentInset:UIEdgeInsets)-> PWrapper{
        self.base.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func isPagingEnabled(_ isPagingEnabled:Bool)-> PWrapper{
        self.base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    @discardableResult
    func showsHorizontalScrollIndicator(_ enabled:Bool)-> PWrapper{
        self.base.showsHorizontalScrollIndicator = enabled
        return self
    }
    
    @discardableResult
    func contentInsetAdjustmentBehavior(_ behavior:UIScrollView.ContentInsetAdjustmentBehavior)-> PWrapper{
        self.base.contentInsetAdjustmentBehavior = behavior
        return self
    }
    
    @discardableResult
    func bounces(_ value:Bool)-> PWrapper{
        self.base.bounces = value
        return self
    }
}
