//
//  DRFloatTextField.h
//  textFieldSetup
//
//  Created by deepakraj murugesan on 15/03/16.
//  Copyright © 2016 deepakraj murugesan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DRFloatTextField : UITextField
@property (nonatomic, strong, nullable) NSDictionary *placeholderAttributes;
@property (nonatomic, strong, nullable) UIColor *errorColor;
@property (nonatomic, strong, nullable) UIColor *lineColor;
- (void)showError;
- (void)hideError;
@property (nonatomic) IBInspectable BOOL enableMaterialPlaceHolder;
@end
