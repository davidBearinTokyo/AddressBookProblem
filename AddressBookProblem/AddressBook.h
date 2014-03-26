//
//  AddressBook.h
//  AddressBookProblem
//
//  Created by davidBear on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject
{
    NSString *bookName;
    NSMutableArray *book;
}

// initWithName: set up the initial array to hold the address cards
- (id) initWithName: (NSString *) name;
// addCard: add cards to addressBook
- (void) addCard: (AddressCard *) theCard;
// Report the nuber of address cards in book;
- (unsigned long int) entries;
// gives a concise listing of its entire contents.
- (void) list;
- (AddressCard *) lookup: (NSString *) theName;
- (NSMutableArray *) lookup2: (NSString *) theName;
- (void) lookup3: (NSString *) theName; 


- (void) removeCard: (AddressCard *) theCard;
- (BOOL) removeName: (NSString *) theName;

- (void) sort;
- (void) sort2;

- (void) dealloc;






@end
