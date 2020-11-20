.class public Lcom/android/systemui/statusbar/phone/WLBSwitch;
.super Landroid/widget/FrameLayout;
.source "WLBSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;,
        Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;,
        Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

.field protected mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

.field private final mTmpInt2:[I

.field private mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

.field private mWlbAvathar:Landroid/widget/ImageView;

.field private mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 40
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->updateSWitchToCurrentMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->handleFeature()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/WLBSwitch;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleFeature()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "worklife_feature_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 157
    sget-object v1, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFeature : WLB app present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->onWLBModeChanged()V

    :goto_1
    return-void
.end method

.method private readCurrentMode()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    return-void
.end method

.method private updateSWitchToCurrentMode()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x64

    .line 192
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbAvathar:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Mode changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 196
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbAvathar:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->wlbDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 72
    sget-object p1, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    const-string v0, "WLB switch clicked "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "qt_enter"

    const-string v0, "1"

    const-string v1, "C22AG9UUDL"

    .line 78
    invoke-static {p1, p1, v0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_wlb_setup_done"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setIsFullyExpanded(Z)V

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    aget v3, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    aget v2, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    aput v2, v1, v0

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p1

    if-nez p1, :cond_2

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->readCurrentMode()V

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doBindService()V

    goto :goto_1

    .line 95
    :cond_3
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.oneplus.intent.ACTION_LAUNCH_WLB"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.oneplus.opwlb"

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 170
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "worklife_feature_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: user :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " featureEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    if-eq v1, p1, :cond_2

    const/4 p1, 0x2

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->onWLBModeChanged()V

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->updateSWitchToCurrentMode()V

    goto :goto_0

    :cond_1
    const-string p0, "onConfigurationChanged: Controller null"

    .line 182
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/16 p1, 0x8

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    :catch_1
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    :catch_2
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " finishInflate current User :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mCurrentUser:I

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    :cond_0
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/android/systemui/R$id;->wlb_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbAvathar:Landroid/widget/ImageView;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    .line 131
    const-class p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 3

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setSwitchCallbacks(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;)V

    .line 138
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 139
    new-instance p1, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "oneplus_wlb_break_mode_activated"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    if-nez p1, :cond_1

    .line 144
    new-instance p1, Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "worklife_feature_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    if-nez p1, :cond_2

    .line 148
    new-instance p1, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    .line 149
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public updateSwitchState()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->updateSWitchToCurrentMode()V

    return-void
.end method
