#import <UIKit/UIKit.h>
#import <Preferences/Preferences.h>
#import <substrate.h>
#define Plist_PATH @"/var/mobile/Library/Preferences/TwitterNews.plist"
inline bool GetPrefBool(NSString *key)
{
return [[[NSDictionary dictionaryWithContentsOfFile:Plist_PATH] valueForKey:key] boolValue];
}

%hook TFNTwitterAccount
-(BOOL)isNewsAutoRefreshEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isNewsHeadlineTimeStampEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isNewsAuthorAccountSectionEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isNewsTabRelatedTweetsEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isNewsHeadlineCategoryEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isNewsSeamfulV2Enabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isNewsSeamfulEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isNewsFeaturedStoryEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isNewsNotificationSwitchEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isNewsTabEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isNewsCategoryNavigationEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isNewsTabEnabledNoDDGImpression{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isInNewsExperiment{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
-(BOOL)isInTweetTranslationExperiment{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isVITNotificationsSettingsEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(BOOL)isHomeTimelineNewTweetsBannerEnabled{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
%end





%hook T1NewsHeadlineViewController
-(BOOL)isRefreshingNews{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook T1NewsHeadlineViewController
-(BOOL)isRefreshing{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}

-(void)setIsRefreshingNews:(BOOL)arg1{
if(GetPrefBool(@"k1")) {
arg1 = TRUE;    
%orig(arg1);
}else{
return %orig;
}
}
%end




%hook T1NewsRankingsViewController
-(BOOL)isRefreshing{
if(GetPrefBool(@"k1")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook TFNTwitter
-(void)saveMomentsState:(BOOL)arg1{
if(GetPrefBool(@"k2")) {
arg1 = TRUE;    
%orig(arg1);
}else{
return %orig;
}
}
%end


%hook T1MomentsGuideContainerViewController
-(BOOL)didTapFollow{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook T1MomentsGuideContainerViewController
-(void)resumeMedia{return;
}
%end 

%hook TFNTwitterAccount
-(BOOL)isMomentsGuideEnabled{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook TFNTwitterAccount
-(BOOL)isMomentsEnabled{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook TFNTwitterMomentsStateManager
-(void)setNeedsSerialization:(BOOL)arg1{
if(GetPrefBool(@"k2")) {
arg1 = TRUE;    
%orig(arg1);
}else{
return %orig;
}
}
%end

%hook TFNTwitterMomentsGuideDataManagerFactory
+(void)setMomentsEnabled:(BOOL)arg1{
if(GetPrefBool(@"k2")) {
arg1 = TRUE;    
%orig(arg1);
}else{
return %orig;
}
}
%end




%hook TFNTwitterAccount
-(BOOL)isMomentsGuideEnabledWithDDGImpression{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook TFNTwitterMoment
-(BOOL)canSubscribe{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook TFNTwitterAPIMomentsCapsuleDataManager
-(void)updateMomentSubscription{return;
}
%end



%hook TFNTwitterMomentsStateManager
-(BOOL)needsSerialization{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end



%hook TFNTwitterAccount
-(BOOL)isMomentsLinksEnabled{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook TFNTwitterStatus
-(BOOL)isMoment{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook T1MomentPageVideoStreamElementViewController
-(void)resumeMedia{return;
}
%end

%hook T1MomentPageAudioElementViewController
-(BOOL)shouldResumeMedia{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end


%hook T1MomentPageAudioElementViewController
-(void)resumeMedia{return;
}
%end 

%hook T1MomentPageBackgroundViewController
-(BOOL)shouldResumeMedia{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook TFNTwitterAccount
-(BOOL)isSerializingMoments{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end

%hook TFNTwitterMoment
-(BOOL)isSensitive{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end



%hook TFNTwitterMomentCluster
-(BOOL)isActive{
if(GetPrefBool(@"k2")) {
return TRUE;
}else{
return %orig;
}
}
%end







