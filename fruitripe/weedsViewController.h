//
//  weedsViewController.h
//  fruitripe
//
//  Created by Ted Lee on 3/2/14.
//  Copyright (c) 2014 Ted Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface weedsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSArray *menu1;
@property (nonatomic, strong) NSArray *menu2;
@property (nonatomic, strong) NSArray *menu3;


@end
