//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Lloyd W. Sykes on 6/14/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()
// Don't forget to include the mpty paranthesis that conclude the private @interface section

@property (strong, nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson

- (instancetype)init; {
    
    self = [self initWithName:@"Lloyd" ageInYears:26 heightInInches:71];
    
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears; {
    
    self = [self initWithName:name ageInYears:ageInYears heightInInches:67];
    
    return self;
    
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches; {
    
    self = [super init];
    
    if (self) {
        
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
        
    }
    
    return self;
    
}

- (NSString *)celebrateBirthday; {
    
    /* 2 — Write the method implementation for `celebrateBirthday` to:
     
     * increment the `ageInYears` property by one:
     * capture the return of calling `ordinalForInteger:` with the `self.ageInYears` property submitted as the argument:
     * use the `stringWithFormat:` class method on `NSString` to create a formatted string that will read `HAPPY 30TH BIRTHDAY, MARK!!!` when an instance of `FISPerson` with the `name` property set to `@"Mark"` and the `ageInYears` property set to `29` performs the `celebrateBirthday` method; capture this formatted string into a new string object.
     * use an `NSLog()` to print the birthday message to the console, and
     * finally, `return` the formatted string containing the birthday message so the test can verify it.
     */
    
    self.ageInYears++;
    
    NSString *birthdayThirty = [[NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, [self ordinalForInteger:self.ageInYears], self.name] uppercaseString];
    // I attempted to hard code certain aspects by making self.name = @"Mark" & self.ageInyears = 29 but this didn't factor in other names or ages (test was also looking for Tim who was apparently turning 1000!). I also originally called [self ordinalForInteger:self.ageInYears] outside of the stringWithFormat which wasn't necessary. Notice how there's two format specifers representing both the year of the age as well as the appropriate ordinal.
    
    NSLog(@"\n\n\n\n\n\n\n\n%@\n\n\n\n\n\n\n\n\n", birthdayThirty);
    
    return birthdayThirty;
    
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    // This method definition came directly from the instructions.
    
    NSString *ordinal = @"th";
    
    if (integer % 10 == 1 && integer % 100 != 11) {
        
        ordinal = @"st";
        
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        
        ordinal = @"nd";
        
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        
        ordinal = @"rd";
        
    }
    
    return ordinal;
}

- (BOOL)isQualifiedTutor; {
    
    BOOL qualifiedTutor = 0;
    
    if ([self.skills count] >= 4) {
        // This checks to see if the mutable array self.skills contains at least 4 objects in it.
        
        qualifiedTutor = 1;
        
    }
    
    return qualifiedTutor;
    
}

- (void)learnSkillBash; {
    
    if (![self.skills containsObject:@"bash"]) {
        
        [self.skills addObject:@"bash"];
        
    }
    
}

- (void)learnSkillXcode; {
    
    if (![self.skills containsObject:@"Xcode"]) {
        
        [self.skills addObject:@"Xcode"];
        
    }
    
}

- (void)learnSkillObjectiveC; {
    
    if (![self.skills containsObject:@"Objective-C"]) {
        
        [self.skills addObject:@"Objective-C"];
        
    }
    
}

- (void)learnSkillObjectOrientedProgramming; {
    
    if (![self.skills containsObject:@"Object-Oriented Programming"]) {
        
        [self.skills addObject:@"Object-Oriented Programming"];
        
    }
    
}

- (void)learnSkillInterfaceBuilder; {
    
    if (![self.skills containsObject:@"Interface Builder"]) {
        
        [self.skills addObject:@"Interface Builder"];
        
    }
    
}

@end
