//
//  FizzBuzz.h
//  TDD FizzBuzz
//
//  Created by Al Tyus on 1/16/14.
//  Copyright (c) 2014 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FizzBuzz : NSObject

@property (strong, nonatomic) NSNumber *startNumber;
@property (strong, nonatomic) NSNumber *endNumber;

- (id)init;
- (instancetype)initWithStartNumber:(NSNumber *)startNumber
                          endNumber:(NSNumber *)endNumber;

- (NSArray *)getFizzBuzzArray;
+ (NSArray *)getValuesBetweenNumber:(NSNumber *)startNumber
                          endNumber:(NSNumber *)endNumber;

+ (instancetype)fizzBuzzWithStartNumber:(NSNumber *)startNumber
                              endNumber:(NSNumber *)endNumber;

@end
