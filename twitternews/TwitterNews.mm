#import <Preferences/Preferences.h>

@interface TwitterNewsListController: PSListController {
}
@end

@implementation TwitterNewsListController
-(void)Twitter{
   if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]])
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetbot:///user_profile/" stringByAppendingString:@"AboGhzayel"]]];

   else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]])
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitterrific:///profile?screen_name=" stringByAppendingString:@"AboGhzayel"]]];

   else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]])
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"tweetings:///user?screen_name=" stringByAppendingString:@"AboGhzayel"]]];

   else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]])
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"twitter://user?screen_name=" stringByAppendingString:@"AboGhzayel"]]];

   else
       [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[@"https://mobile.twitter.com/" stringByAppendingString:@"AboGhzayel"]]];
} // twitter

-(void)respring {
	 system("killall -9 SpringBoard");
      } 

- (id)specifiers {
    if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"TwitterNews" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
