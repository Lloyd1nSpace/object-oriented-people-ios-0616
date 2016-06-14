//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISPerson.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISPerson *person = [[NSObject alloc] init];
    person.name;
    person.ageInYears;
    person.heightInInches;
    person.skills;
    
    
    return YES;
}

@end
