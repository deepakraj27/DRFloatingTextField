//
//  ViewController.m
//  textFieldSetup
//
//  Created by deepakraj murugesan on 15/03/16.
//  Copyright © 2016 deepakraj murugesan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet DRFloatTextField *phoneNumber;
@property (weak, nonatomic) IBOutlet DRFloatTextField *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self settingUpTextField];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)settingUpTextField{
    self.phoneNumber.enableMaterialPlaceHolder = YES;
    self.phoneNumber.placeholder = @"Phone Number";
    self.phoneNumber.errorColor = [UIColor colorWithRed:0.910 green:0.329 blue:0.271 alpha:1.000];
    self.phoneNumber.lineColor = [UIColor grayColor];
    self.phoneNumber.delegate=self;
    self.phoneNumber.tag=1;
    
    
    self.password.enableMaterialPlaceHolder = YES;
    self.password.placeholder = @"Password";
    self.password.errorColor = [UIColor colorWithRed:0.910 green:0.329 blue:0.271 alpha:1.000];
    self.password.lineColor = [UIColor grayColor];
    self.password.delegate=self;
    self.password.tag=2;

}


-(void)textFieldDidEndEditing:(DRFloatTextField *)textField{
    if (textField.text.length==0) {
        [textField showError];
    }else{
        [textField hideError];
    }
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    UIView *view = [self.view viewWithTag:textField.tag + 1];
    if (!view)
        [textField resignFirstResponder];
    else
        [view becomeFirstResponder];
    return YES;
    
}
@end
