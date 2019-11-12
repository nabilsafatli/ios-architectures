//
//  Character.h
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Character : NSObject
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) UIColor *color;
@property int age;
@property int profession;
@property (nonatomic, retain) NSArray *items;
@end

NS_ASSUME_NONNULL_END


typedef enum profession {
    kWarrior,
    kWizard,
    kRanger
} profession;
