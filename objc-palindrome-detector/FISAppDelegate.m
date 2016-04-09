//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    /* NSString *palindrome = @"racecar";
    NSString *reversed = [self stringByReversingString:palindrome];
    BOOL isPalindrome = [self stringIsPalindrome:palindrome];
    NSLog(@"%@ : %@", palindrome, reversed);
    NSLog(@"is palindrome?: %d", isPalindrome);
    
    NSString *bob = @"Bob";
    BOOL bobIsPalindrome = [self stringIsPalindrome:bob];
    NSLog(@"%@: %d", bob, bobIsPalindrome);
    
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome:kanakanak];
    NSLog(@"%@: %d", kanakanak, kanakanakIsPalindrome);
    
    NSString *aibophobia = @"Aibophpobia";
    BOOL aibophobiaIsPalindrome = [self stringIsPalindrome:aibophobia];
    NSLog(@"%@: %d", aibophobia, aibophobiaIsPalindrome);
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome:notAPalindrome];
    NSLog(@"%@: %d", notAPalindrome, notAPalindromeIsPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@"%@: %d", neverOdd, neverOddIsPalindrome);
    
    NSString *iPreferPi = @"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%@: %d", iPreferPi, iPreferPiIsPalindrome); */
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@"%@: %d", fleeToMe, fleeToMeIsPalindrome);
    
    NSString *norma = @"Norma is as selfless as I am, Ron.";
    BOOL normaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%@: %d", norma, normaIsPalindrome);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%@: %d", papayaWar, papayaWarIsPalindrome);
    
    
    
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

- (BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[@",", @".", @"!", @"?", @":", @";", @""];
    NSString *withoutPunctuations = [string copy];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuations = [withoutPunctuations stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    NSString *spaceless = [withoutPunctuations stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reversed = [self stringByReversingString:lowercase];
    return [lowercase isEqualToString:reversed];
}

- (NSString *)stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    NSString *lowercase = [string lowercaseString];
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [lowercase characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%C", c];
    }
    return result;
}

@end
