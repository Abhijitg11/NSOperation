//
//  ViewController.m
//  NSOPeration
//
//  Created by Student on 17/11/16.
//  Copyright (c) 2016 Abhijit.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _queue=[[NSOperationQueue alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {

    NSString *imgpath1=@"http://www.planwallpaper.com/static/images/desktop-year-of-the-tiger-images-wallpaper.jpg";
    [_indicator startAnimating];
    
NSBlockOperation *op1=[NSBlockOperation blockOperationWithBlock:^{
    NSURL *url=[NSURL URLWithString:imgpath1];
    NSData *data=[NSData dataWithContentsOfURL:url];
    UIImage *img=[UIImage imageWithData:data];
    [[NSOperationQueue mainQueue]addOperationWithBlock:^{
        _imagview.image=img;
        [_indicator stopAnimating];
    }];
}];
    [_queue addOperation:op1];
    
    NSString *imgpath2=@"http://www.planwallpaper.com/static/images/desktop-year-of-the-tiger-images-wallpaper.jpg";
    [_indicator2 startAnimating];
    
    NSBlockOperation *op2=[NSBlockOperation blockOperationWithBlock:^{
        NSURL *url=[NSURL URLWithString:imgpath2];
        NSData *data=[NSData dataWithContentsOfURL:url];
        UIImage *img2=[UIImage imageWithData:data];
        [[NSOperationQueue mainQueue]addOperationWithBlock:^{
            _imageview2.image=img2;
            [_indicator2 stopAnimating];
        }];
    }];
    [_queue addOperation:op2];
    


}
@end
