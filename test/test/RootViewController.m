//
//  RootViewController.m
//  test
//
//  Created by evan on 14-6-13.
//  Copyright (c) 2014年 evan. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UITextFieldDelegate>

@end

@implementation RootViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",nil];
    NSLog(@"------------%@",array);

    [array enumerateObjectsUsingBlock:^(id str,NSUInteger index, BOOL* te){
        if ([str isEqualToString:@"2"] || [str isEqualToString:@"4"])
            [array removeObject:str];

    }];
    NSLog(@"------------%@",array);
    
    UITextField *field = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, 280, 40)];
    field.delegate = self;
    field.layer.borderColor = [UIColor yellowColor].CGColor;
    field.layer.borderWidth = 1.0;
    [self.view addSubview:field];

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// return NO to disallow editing.
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldShouldBeginEditing......");
    return YES;
}

// became first responder
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing......");

}

// return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldShouldEndEditing......");
    return YES;
}

// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidEndEditing......");
}

// return NO to not change text
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSLog(@"shouldChangeCharactersInRange......");
    return YES;
}

// called when clear button pressed. return NO to ignore (no notifications)
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    NSLog(@"textFieldShouldClear......");
    return YES;
}

// called when 'return' key pressed. return NO to ignore.
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"textFieldShouldReturn......");
    return YES;
}
@end
