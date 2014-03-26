//
//  main.m
//  AddressBookProblem
//
//  Created by davidBear on 11-9-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main (int argc, const char * argv[])
{
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    //--------------- Programming Begin ---------------//    
    // 2011.09.5
    // Program 15.10
    // NSarray exerciese 2   
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
    NSString *bName = @"Tony Iannino";
    NSString *bEmail = @"tony.iannino@techfitness.com";
    NSString *cName = @"Stephen tammy";
    NSString *cEmail = @"steve@classroomM.com";
    NSString *dName = @"Jamie Baker";
    NSString *dEmail = @"jbaker@classroomM.com";
    NSString *eName = @"Stephen david";
    NSString *eEmail = @"steve@classroomM.com";
    
    AddressCard *card1 = [[AddressCard alloc] init];
    AddressCard *card2 = [[AddressCard alloc] init];
    AddressCard *card3 = [[AddressCard alloc] init];
    AddressCard *card4 = [[AddressCard alloc] init];
    AddressCard *card5 = [[AddressCard alloc] init];
    
    AddressCard *myCard;
    NSMutableArray *serarchList;
    
    
    
    
    AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Address Book"];
    
    NSLog (@"Entries in address book after creation: %lu", [myBook entries]);
    
    // Now set up four address cards
    [card1 setName: aName andEmail: aEmail];
    [card2 setName: bName andEmail: bEmail];
    [card3 setName: cName andEmail: cEmail];
    [card4 setName: dName andEmail: dEmail];
    [card5 setName: eName andEmail: eEmail];
    
    // Add the cards to the address book
    [myBook addCard: card1];
    [myBook addCard: card2];
    [myBook addCard: card3];
    [myBook addCard: card4];
    [myBook addCard: card5];
    
    NSLog (@"Entries in address book after adding cards: %lu",
           [myBook entries]);
    
    // List all the entries in the book now
    [myBook list];
    
    // ------------------------------
    // Lookup Method
    // ------------------------------
    NSLog (@"Search 'Step' using lookup ");
    myCard = [myBook lookup: @"Stephen david"];
    
    if (myCard != nil)
        [myCard print];
    else
        NSLog(@"Not found.");
    
    // ------------------------------
    // Lookup2 Method
    // ------------------------------
    NSLog (@"Search 'Step' using lookup2 ");
    serarchList = [myBook lookup2:@"Stephen"];
    for (AddressCard *theCard in serarchList) {
        [theCard print];
    }
    
    // ------------------------------
    // Lookup3 Method
    // ------------------------------
    NSLog (@"Search 'Step' using lookup3 ");
    [myBook lookup3: @"Step"];
    
    [myBook removeName: @"Stephen david"];
    
    //[myBook sort2];
    //[myBook list];
    
    
    [card1 release];
    [card2 release];
    [card3 release];
    [card4 release];
    [card5 release];
    [myCard release];
    //--------------- Programming Finished ------------//
    
    [pool drain];
    return 0;
}

















































































