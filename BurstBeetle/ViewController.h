//
//  ViewController.h
//  BurstBeetle
//
//  Created by 浦本　竜 on 13/12/12.
//  Copyright (c) 2013年 University of Kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Chara.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController

- (IBAction)ShortMove:(id)sender;
- (IBAction)LongMove:(id)sender;
@property NSInteger ButtonPush;
@property int SRight;
@property int SLeft;


@end


