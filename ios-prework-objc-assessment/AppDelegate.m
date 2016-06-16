//
//  AppDelegate.m
//  ios-prework-objc-assessment
//
//  Created by Joel Bell on 5/23/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSArray *numbersArray = @[];
    NSArray *lettersArray = @[];
    NSDictionary *alphabetDictionary = @{ };
    
    numbersArray = [self generateArrayOfNumbers];
    lettersArray = [self generateArrayOfLetters];
    alphabetDictionary = [self generateNumbersAndLettersDictionaryWithNumbers:numbersArray letters:lettersArray];
    
    numbersArray = [alphabetDictionary allKeys];
    NSMutableArray *mutableLettersArray = [lettersArray mutableCopy];
    [mutableLettersArray removeAllObjects];
    [mutableLettersArray addObjectsFromArray:[alphabetDictionary allValues]];
    NSLog(@"%@ \n %@", numbersArray, mutableLettersArray);
    
    return YES;
}


- (NSArray *)generateArrayOfNumbers {
    
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (NSUInteger i=1; i<=26; i++) {
        NSNumber *eachNumber = @(i);
        [returnArray addObject:eachNumber];
    }
    NSLog(@"%@", returnArray);
    return returnArray;
}

- (NSArray *)generateArrayOfLetters {
    
    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    char letters = 'a';
    for (NSUInteger i=0; i<=25; i++) {
        NSString *eachLetter = [NSString stringWithFormat:@"%c", letters+i];
        [returnArray addObject:eachLetter];
    }
    NSLog(@"%@", returnArray);
    return returnArray;
}

- (NSDictionary *)generateNumbersAndLettersDictionaryWithNumbers: (NSArray *)numbersArray  letters:(NSArray *)lettersArray {
    
    NSMutableDictionary *returnDictionary = [[NSMutableDictionary alloc] init];
    
    for (NSUInteger i=0; i < [numbersArray count]; i++) {
        
        NSNumber *eachNumber = numbersArray[i];
        returnDictionary[eachNumber] = lettersArray[i];
    }
    
    
    
    NSLog(@"%@", returnDictionary);
    return returnDictionary;
}


@end
