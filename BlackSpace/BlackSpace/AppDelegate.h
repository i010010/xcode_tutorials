//
//  AppDelegate.h
//  BlackSpace
//
//  Created by apple on 2019/04/08.
//  Copyright © 2019 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong) NSPersistentContainer *persistentContainer;

@end

