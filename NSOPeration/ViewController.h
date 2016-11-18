//
//  ViewController.h
//  NSOPeration
//
//  Created by Student on 17/11/16.
//  Copyright (c) 2016 Abhijit.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@property (strong, nonatomic) IBOutlet UIImageView *imagview;
- (IBAction)download:(id)sender;
@property(nonatomic,retain)NSOperationQueue *queue;
@property (strong, nonatomic) IBOutlet UIImageView *imageview2;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *indicator2;





@end

