//
//  ViewController.m
//  LLPickerView
//
//  Created by simple on 16/1/26.
//  Copyright © 2016年 levy.com. All rights reserved.
//

#import "ViewController.h"
#import "AKPickerView.h"

@interface ViewController ()
@property (nonatomic, strong) AKPickerView *pickerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *bottomView =[UIView new];
    [bottomView setBackgroundColor:[UIColor colorWithRed:0.9059 green:0.9059 blue:0.9059 alpha:1.0]];
    [bottomView setFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    [bottomView setCenter:self.view.center];
    [self.view addSubview:bottomView];
    
    UIView *corView = [UIView new];
    [corView setBackgroundColor:[UIColor colorWithRed:0.6039 green:0.6039 blue:0.6039 alpha:1.0]];
    [corView setFrame:CGRectMake(0, 0, 100*0.618, 50*0.618)];
    [corView setCenter:CGPointMake(self.view.frame.size.width/2.0, 25)];
    [corView.layer setCornerRadius:25*0.618];
    [corView.layer setMasksToBounds:YES];
    [bottomView addSubview:corView];
    
    self.pickerView = [AKPickerView pickerViewWithSupView:bottomView frame:CGRectMake(0, 0, self.view.frame.size.width, 50) dataArray:@[] block:^(NSInteger item) {
        NSLog(@"%ld",(long)item);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
