//
//  AddressBook.m
//  AddressBookProblem
//
//  Created by davidBear on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

- (id)initWithName: (NSString *) name
{
    self = [super init];
    if (self) {
        bookName = [[NSString alloc] initWithString: name];
        book = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) addCard: (AddressCard *) theCard{
    [book addObject: theCard];
}

- (unsigned long int) entries{
    return [book count];
}

- (void) list{
    NSLog (@"======== Contents of: %@ =========", bookName);
    for ( AddressCard *theCard in book )
        NSLog (@"%-20s %-32s", [theCard.name UTF8String],
               [theCard.email UTF8String]);
    NSLog (@"==================================================");
}

// ------------------------------
// Method for seraching the name
// ------------------------------
- (AddressCard *) lookup: (NSString *) theName{
    for (AddressCard *nextCard in book)
        if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    return nil; // nil: vacum pointer
    
}

// lookup2: source code from wylroro
- (NSMutableArray *) lookup2: (NSString *) theName{  
    //return [book sortedArrayUsingSelector: @selector(findName:)];
    NSRange list;
    NSMutableArray *nameList = [[NSMutableArray alloc] init];
    for (AddressCard *nextCard in book){
        list = [nextCard.name rangeOfString:theName];
        if (list.location != NSNotFound) {
            [nameList addObject:nextCard];
        }
    }
    return nameList;
}

- (void) lookup3: (NSString *) theName{
    for (AddressCard *nextCard in book){
        if ([nextCard.name rangeOfString: theName].location != NSNotFound) {
            [nextCard print];
        }
    }
    
}

// ------------------------------
// end
// ------------------------------



- (void) removeCard: (AddressCard *) theCard{
    [book removeObjectIdenticalTo:theCard];
}
// ??
- (BOOL) removeName: (NSString *) theName{
    AddressBook *removeBook = [[AddressBook alloc] init];
    [removeBook lookup3:theName];
    
    for (AddressCard *nextCard in book){
        if ([nextCard.name rangeOfString: theName].location == NSNotFound) {
            NSLog(@"No such person found.");
            [nextCard print];
            return YES;
        }
        else
            NSLog(@"Still in address book");
    }
    return NO;
}



-(void) dealloc{
    [bookName release];
    [book release];
    [super dealloc];
}

// ------------------------------
// Method for arranging the name 
// ------------------------------

- (void) sort{
    [book sortUsingSelector:@selector(compareNames:)];
}

- (void) sort2{
 [book sortUsingComparator:^(id obj1, id obj2) {
     return [[obj1 name] compare:[obj2 name]];
 }];
}

// ------------------------------
// end
// ------------------------------
@end
























