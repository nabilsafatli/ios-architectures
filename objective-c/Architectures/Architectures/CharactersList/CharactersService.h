//
//  CharactersService.h
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

NS_ASSUME_NONNULL_BEGIN

@interface CharactersService : NSObject

-(NSArray<Character *> *)getAll;

@end

NS_ASSUME_NONNULL_END
