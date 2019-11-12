//
//  CharactersService.m
//  Architectures
//
//  Created by Nabil Safatli on 2019-11-12.
//  Copyright © 2019 Nabil Safatli. All rights reserved.
//

#import "CharactersService.h"
#import "Character.h"

@implementation CharactersService
NSArray<Character *> *_characters;

-(NSArray<Character *> *) getAll {
    if(_characters) {
        return _characters;
    }

    NSDictionary * dictionary = [self JSONFromFile];
    NSMutableArray *characters = [NSMutableArray new];
    NSArray *charactersResult = [dictionary objectForKey:@"characters"];

    for(int i = 0; i < charactersResult.count; i++) {
        NSDictionary *characterData = [charactersResult objectAtIndex:i];
        Character *character = [Character new];
        character.name = [characterData objectForKey:@"name"];
        character.age = [[characterData objectForKey:@"age"] intValue];
        [characters addObject:character];
    }

    _characters = characters;

    return characters;
}

- (NSDictionary *)JSONFromFile
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"rpg-characters" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
