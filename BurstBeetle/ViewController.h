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

@interface ViewController : UIViewController{
    UIImageView *playerImage;
    UIImage *backgroundImage;
}
- (IBAction)shortMoveDown:(id)sender;
- (IBAction)LongMoveDown:(id)sender;

- (IBAction)ShortMove:(id)sender;
- (IBAction)LongMove:(id)sender;
@property NSInteger ButtonPush;
@property int SRight;
@property int SLeft;


@end


