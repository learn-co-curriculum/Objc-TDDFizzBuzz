//
//  FizzBuzz.m
//  TDD FizzBuzz
//
//  Created by Al Tyus on 1/16/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

- (id)init
{
    self = [super init];
    if (self)
    {
        self = [self initWithStartNumber:@0
                               endNumber:@0];
    }
    return self;
}
- (instancetype)initWithStartNumber:(NSNumber *)startNumber
                          endNumber:(NSNumber *)endNumber
{
    self = [super init];
    if (self)
    {
        _startNumber = startNumber;
        _endNumber = endNumber;
    }
    return self;
}

- (NSArray *)getFizzBuzzArray
{
    return [FizzBuzz getValuesBetweenNumber:self.startNumber
                                  endNumber:self.endNumber];
}

+ (instancetype)fizzBuzzWithStartNumber:(NSNumber *)startNumber
                              endNumber:(NSNumber *)endNumber
{
    return [[FizzBuzz alloc] initWithStartNumber:startNumber
                                       endNumber:endNumber];
}
+ (NSArray *)getValuesBetweenNumber:(NSNumber *)startNumber
                          endNumber:(NSNumber *)endNumber
{
    NSMutableArray *fizzBuzz = [[NSMutableArray alloc] init];
    
    NSInteger count = [startNumber integerValue];
    NSInteger endInt = [endNumber integerValue];
    
    for (NSInteger x = count; x <= endInt; x++)
    {
        if (x == 0)
        {
            [fizzBuzz addObject:[@(x) description]];
        }
        else if (x % 3 == 0 && x % 5 == 0)
        {
            [fizzBuzz addObject:@"FizzBuzz"];
        }
        else if (x % 3 == 0)
        {
            [fizzBuzz addObject:@"Fizz"];
        }
        else if (x % 5 == 0)
        {
            [fizzBuzz addObject:@"Buzz"];
        }
        else
        {
            [fizzBuzz addObject:[@(x) description]];
        }
    }
    NSLog(@"%@", fizzBuzz);
    
    return [NSArray arrayWithArray:fizzBuzz];
}

@end
