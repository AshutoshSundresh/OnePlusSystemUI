.class public Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "OpStatusBar.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;
.implements Lcom/oneplus/opzenmode/OpZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;,
        Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;,
        Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static sPkgReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private isCTSStart:Z

.field private mAccentColor:I

.field private final mAlexaIntent:Landroid/content/Intent;

.field protected mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

.field protected mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

.field protected mBackDisposition:I

.field private mCameraAnim:Lcom/oneplus/anim/OpCameraAnimateController;

.field private mCarModeReceiver:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

.field private final mCheckNavigationBarTask:Ljava/lang/Runnable;

.field protected mCustomDozing:Z

.field private mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

.field private mDemoHighlightHint:Landroid/app/Notification$Builder;

.field private mDisableQs:I

.field public mDisableQsObserver:Landroid/database/ContentObserver;

.field private mDoubleTapPowerApp:I

.field protected mDoubleTapPowerObserver:Landroid/database/ContentObserver;

.field private mFullScreenGestureObserver:Landroid/database/ContentObserver;

.field private mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

.field private mGoogleDarkTheme:Z

.field protected mImeDisplayId:I

.field private mImeNavLp:Landroid/view/WindowManager$LayoutParams;

.field private mImeShow:Z

.field protected mImeStateChange:Z

.field protected mImeVisibleState:I

.field private mLastExpand:Z

.field private mLastUpdateNavBarTime:J

.field private mNavLp:Landroid/view/WindowManager$LayoutParams;

.field private mNavShowing:Z

.field private mNavType:I

.field private mNeedShowOTAWizard:Z

.field mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

.field protected mOPAodWindow:Landroid/widget/RelativeLayout;

.field private mOpBoostUtils:Lcom/oneplus/util/OpBoostUtils;

.field private mOpDozingRequested:Z

.field private mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

.field protected mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

.field private mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

.field protected mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

.field private mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

.field protected mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

.field protected mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

.field protected mOrientation:I

.field private mOtaWizardObserver:Landroid/database/ContentObserver;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mQsDisabled:Z

.field protected mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field protected mQuickQSPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mRotation:I

.field protected mShowImeSwitcher:Z

.field private mSpecialTheme:Z

.field protected mStartDozingRequested:Z

.field protected mStatusBarCollapseListener:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;

.field private final mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

.field protected mTelecomManager:Landroid/telecom/TelecomManager;

.field private mThemeColor:I

.field private mThemeSetting:Lcom/oneplus/util/SystemSetting;

.field protected mToken:Landroid/os/IBinder;

.field protected mWakingUpAnimationStart:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    const/4 v0, 0x0

    .line 258
    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 313
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNeedShowOTAWizard:Z

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastExpand:Z

    .line 234
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAlexaIntent:Landroid/content/Intent;

    .line 238
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    .line 259
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isCTSStart:Z

    .line 270
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeStateChange:Z

    .line 271
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeShow:Z

    const/4 v1, 0x0

    .line 287
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    .line 735
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    .line 736
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    const-wide/16 v2, 0x0

    .line 737
    iput-wide v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastUpdateNavBarTime:J

    .line 760
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpStatusBar$b4K8-DVbezRw2CdKDCQbZqxi8NU;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpStatusBar$b4K8-DVbezRw2CdKDCQbZqxi8NU;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCheckNavigationBarTask:Ljava/lang/Runnable;

    .line 871
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQsDisabled:Z

    .line 872
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDisableQs:I

    .line 1157
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWakingUpAnimationStart:Z

    .line 1876
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    .line 1930
    iput-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    .line 314
    const-class p1, Lcom/android/systemui/model/SysUiState;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/model/SysUiState;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 315
    const-class p1, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNeedShowOTAWizard:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNeedShowOTAWizard:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;I)I
    .locals 0

    .line 163
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDisableQs:I

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkIfThemeChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/os/Handler;
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1402(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isCTSStart:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/util/OpBoostUtils;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpBoostUtils:Lcom/oneplus/util/OpBoostUtils;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDozeServiceHost()Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;I)I
    .locals 0

    .line 163
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)I
    .locals 0

    .line 163
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    return p0
.end method

.method static synthetic access$802(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;I)I
    .locals 0

    .line 163
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelWakingupScrimAnimation()V
    .locals 3

    .line 1327
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    const-string v1, "OpStatusBar"

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cancelWakingupScrimAnimation"

    .line 1331
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getLastAodDisappearAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v1}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$10;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$10;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, " mAodWindowManager or NotificationPanelView is null"

    .line 1328
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkBarModes()V
    .locals 3

    .line 2056
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkBarModes"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkIfThemeChanged()V
    .locals 8

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 1613
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_tile_icon:I

    invoke-static {v1, v2}, Lcom/oneplus/util/OpUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v1

    .line 1614
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v2

    .line 1615
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/util/OpUtils;->isGoogleDarkTheme(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    .line 1617
    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeColor:I

    .line 1621
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAccentColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    iget-boolean v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mSpecialTheme:Z

    .line 1622
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    iget-boolean v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mGoogleDarkTheme:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v4, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v4, v7

    const-string v5, "mThemeColor=0x%x -> 0x%x, mAccentColor=0x%x -> 0x%x, mSpecialTheme=%b -> %b, mGoogleDarkTheme=%b -> %b"

    .line 1617
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpStatusBar"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-boolean v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mSpecialTheme:Z

    if-ne v4, v2, :cond_1

    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeColor:I

    if-ne v4, v6, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeColor:I

    if-nez v4, :cond_2

    if-ne v0, v6, :cond_2

    .line 1640
    :cond_1
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeColor:I

    .line 1641
    iput v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAccentColor:I

    .line 1642
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mSpecialTheme:Z

    const-string v1, "checkIfThemeChanged: handle theme change #1"

    .line 1644
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    const-string v1, "checkIfThemeChanged: handle theme change #2"

    .line 1648
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    const-string v1, "checkIfThemeChanged: handle theme change #3"

    .line 1659
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mGoogleDarkTheme:Z

    .line 1664
    :cond_2
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeColor:I

    return-void
.end method

.method private constructCarModeDemoHighLightNotification(Landroid/app/Notification$Builder;I)V
    .locals 0

    .line 1983
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1984
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setIconOnStatusBar(I)Landroid/app/Notification$Builder;

    const/4 p0, 0x1

    .line 1985
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/16 p2, 0xc8

    .line 1986
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1987
    sget p2, Lcom/android/systemui/R$string;->notification_tap_again:I

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setTextOnStatusBar(I)Landroid/app/Notification$Builder;

    const/16 p2, -0xeef

    .line 1988
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1989
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method private constructDemoHighLightNotification(Landroid/app/Notification$Builder;I)V
    .locals 0

    .line 1917
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1918
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setIconOnStatusBar(I)Landroid/app/Notification$Builder;

    const/4 p0, 0x1

    .line 1919
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/16 p2, 0x32

    .line 1920
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1921
    sget p2, Lcom/android/systemui/R$string;->notification_tap_again:I

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setTextOnStatusBar(I)Landroid/app/Notification$Builder;

    const p2, -0xfb520a

    .line 1922
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;

    .line 1923
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 1924
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 1925
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method private disableGestureHandler()V
    .locals 2

    .line 2393
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    if-eqz v0, :cond_1

    .line 2394
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpStatusBar"

    const-string v1, "OpStatusBar release OpEdgeBackGestureHandler when NavBar show"

    .line 2395
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;->onNavigationBarShow()V

    const/4 v0, 0x0

    .line 2398
    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    :cond_1
    return-void
.end method

.method private enableGestureHandler()V
    .locals 7

    .line 2347
    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    .line 2348
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result v1

    .line 2351
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2352
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2355
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    const-string v4, "OpStatusBar"

    if-nez v3, :cond_2

    .line 2357
    sget-boolean v3, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "OpStatusBar new OpEdgeBackGestureHandler when NavBar hidden"

    .line 2358
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_0
    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;)V

    iput-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    .line 2362
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onNavigationModeChanged(I)V

    .line 2368
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;->onNavigationBarHidden()V

    .line 2369
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;->onConfigurationChanged(I)V

    .line 2371
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mRotation:I

    goto :goto_0

    .line 2376
    :cond_2
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "OpEdgeBackGestureHandler update window"

    .line 2377
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_3
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mRotation:I

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2382
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;->onConfigurationChanged(I)V

    .line 2383
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mRotation:I

    :cond_4
    :goto_0
    return-void
.end method

.method public static getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;
    .locals 1

    if-eqz p0, :cond_0

    .line 1753
    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    .line 1755
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_0
    const/4 v0, 0x4

    .line 1759
    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    return-object p0
.end method

.method private getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 2

    .line 2066
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mBiometricUnlockController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method private getBouncerShowing()Z
    .locals 2

    .line 2224
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mBouncerShowing"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getBubbleController()Lcom/android/systemui/bubbles/BubbleController;
    .locals 2

    .line 2287
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mBubbleController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bubbles/BubbleController;

    return-object p0
.end method

.method private getCarModeDemoNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .line 1973
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1974
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1977
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1978
    sget v1, Lcom/android/systemui/R$drawable;->ic_add:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->constructCarModeDemoHighLightNotification(Landroid/app/Notification$Builder;I)V

    return-object v0
.end method

.method private getDemoNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .line 1907
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1908
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1911
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1912
    sget v1, Lcom/android/systemui/R$drawable;->ic_add:I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->constructDemoHighLightNotification(Landroid/app/Notification$Builder;I)V

    return-object v0
.end method

.method private getDozeScrimController()Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .locals 2

    .line 2184
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mDozeScrimController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    return-object p0
.end method

.method private getDozeServiceHost()Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;
    .locals 2

    .line 2209
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mDozeServiceHost"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    return-object p0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 2061
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mHandler"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
    .locals 2

    .line 2194
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mHeadsUpAppearanceController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-object p0
.end method

.method private getHeadsUpManager()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 2

    .line 2046
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mHeadsUpManager"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method private getIsKeyguard()Z
    .locals 2

    .line 2282
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mIsKeyguard"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getIsOccluded()Z
    .locals 2

    .line 2219
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mIsOccluded"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 2

    .line 2189
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mKeyguardUpdateMonitor"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private getKeyguardViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 2

    .line 2071
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mKeyguardViewMediator"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object p0
.end method

.method private getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;
    .locals 2

    .line 2204
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mNetworkController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object p0
.end method

.method private getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    .line 2006
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2007
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 2

    .line 2500
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mNotificationPanelViewController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method private getNotificationShadeWindowController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
    .locals 2

    .line 2495
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mNotificationShadeWindowController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    return-object p0
.end method

.method private getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 3

    .line 2490
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getNotificationShadeWindowView"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method private getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 3

    .line 2051
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getPanelController"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .locals 2

    .line 2417
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mPowerManager"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method private getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 2

    .line 2081
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mScrimController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object p0
.end method

.method private getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 2

    .line 2229
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mStatusBarKeyguardViewManager"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method private getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 2

    .line 2214
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mPhoneStatusBarWindow"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object p0
.end method

.method private initDetectPkgReceiver()V
    .locals 7

    .line 559
    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$6;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    sput-object v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    .line 652
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 653
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 654
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 655
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private isBrightnessMirrorVisible()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private isDozing()Z
    .locals 2

    .line 2086
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mDozing"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isInLaunchTransition()Z
    .locals 3

    .line 2254
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isInLaunchTransition"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardSecure()Z
    .locals 3

    .line 895
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isKeyguardSecure"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isKeyguardShowing()Z
    .locals 3

    .line 2249
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isKeyguardShowing"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isLaunchCameraWhenFinishedWaking()Z
    .locals 2

    .line 2259
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mLaunchCameraWhenFinishedWaking"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isPulsing()Z
    .locals 3

    .line 2277
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isPulsing"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$checkGestureStartAssist$1(Landroid/os/Bundle;)V
    .locals 1

    .line 862
    const-class v0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 8

    .line 761
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 762
    invoke-virtual {v1}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result v1

    .line 764
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 765
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 768
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNavBarState mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", showing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", attached:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ImeShow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeShow:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpStatusBar"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-boolean v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    .line 775
    iget v7, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    if-eq v7, v3, :cond_2

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez v7, :cond_8

    .line 777
    :cond_2
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 780
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeShow:Z

    if-eqz v1, :cond_6

    .line 781
    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOrientation:I

    if-ne v1, v3, :cond_4

    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    if-nez v1, :cond_3

    const-string v1, "NavBar add it for IME show"

    .line 784
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    .line 789
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->disableGestureHandler()V

    goto/16 :goto_4

    :cond_4
    if-eqz v4, :cond_5

    .line 793
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    if-eqz v1, :cond_5

    const-string v1, "NavBar remove it for IME show in landscape mode"

    .line 794
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 796
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    .line 799
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->enableGestureHandler()V

    .line 800
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->updateImeWindowStatus()V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    .line 805
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    if-eqz v1, :cond_7

    const-string v1, "NavBar remove it"

    .line 807
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 809
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    .line 812
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->enableGestureHandler()V

    .line 813
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->updateImeWindowStatus()V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_b

    .line 820
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    if-nez v2, :cond_b

    const-string v2, "NavBar add it"

    .line 822
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 827
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 828
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    .line 829
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    .line 832
    :cond_a
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x40

    .line 833
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 839
    :goto_3
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    iput-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    .line 844
    :cond_b
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->disableGestureHandler()V

    .line 848
    :goto_4
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    if-eq v5, v0, :cond_c

    .line 850
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 851
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onHideNavBar(Z)V

    .line 855
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastUpdateNavBarTime:J

    return-void
.end method

.method private updateDozing()V
    .locals 0

    .line 2180
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opUpdateDozing()V

    return-void
.end method

.method private updateIsKeyguard()Z
    .locals 3

    .line 2175
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateIsKeyguard"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkGestureStartAssist(Landroid/os/Bundle;)Z
    .locals 1

    .line 861
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavShowing:Z

    if-nez v0, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpStatusBar$pxcFa-Vpz_eOL3Jjz1zwym3ILn0;

    invoke-direct {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/-$$Lambda$OpStatusBar$pxcFa-Vpz_eOL3Jjz1zwym3ILn0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "OpStatusBar"

    const-string p1, "startAssist"

    .line 863
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public checkNavigationBarState()V
    .locals 6

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 746
    iget-wide v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastUpdateNavBarTime:J

    sub-long v2, v0, v2

    .line 747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNavigationBar: now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", last="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastUpdateNavBarTime:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpStatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCheckNavigationBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCheckNavigationBarTask:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastUpdateNavBarTime:J

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCheckNavigationBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string p0, "checkNavigationBarState: already scheduled, skip."

    .line 756
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected checkToStartDozing()V
    .locals 3

    .line 1037
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    const-string v1, "OpStatusBar"

    if-eqz v0, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToStartDozing mStartDozingRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStartDozingRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mOpDozingRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "checkToStartDozing: return, !isGoingToSleep"

    .line 1046
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1052
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStartDozingRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1053
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    .line 1055
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->startDozing()V

    .line 1058
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->startDozing()V

    .line 1063
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->opUpdateDozing()V

    .line 1064
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->updateIsKeyguard()Z

    :cond_2
    return-void
.end method

.method protected checkToStopDozing()V
    .locals 3

    .line 1073
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    const-string v1, "OpStatusBar"

    if-eqz v0, :cond_0

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkToStopDozing mOpDozingRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isCTSStart:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "checkToStopDozing: return, !isWakingUpOrAwake"

    .line 1081
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1089
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isCTSStart:Z

    if-eqz v0, :cond_3

    .line 1090
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    if-eqz v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->stopDozing()V

    .line 1092
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->stopDozing()V

    .line 1093
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->resetStatus()V

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->removeFromWindow(Z)V

    goto :goto_0

    .line 1100
    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    if-eqz v0, :cond_4

    .line 1101
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startWakingUpAnimation()V

    .line 1107
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1108
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    .line 1112
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->updateDozing()V

    :cond_5
    return-void
.end method

.method public dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 2016
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getCommandQueue()Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2020
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2024
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1672
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/faceunlock/OpFacelockController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1673
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    const-string p1, " OpFacelockController null"

    .line 1675
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    if-eqz p1, :cond_1

    .line 1679
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1680
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {p1, p2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->dump(Ljava/io/PrintWriter;)V

    .line 1681
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1684
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDisableQs:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDisableQs:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mNavType:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mDoubleTapPowerApp:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " supportDouble:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " notificationBGColor:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getActivityLaunchAnimator()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
    .locals 2

    .line 1745
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mActivityLaunchAnimator"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    return-object p0
.end method

.method public getAodWindowManager()Lcom/oneplus/aod/OpAodWindowManager;
    .locals 0

    .line 1069
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    return-object p0
.end method

.method public getAppearance()I
    .locals 2

    .line 2300
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mAppearance"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getCommandQueue()Lcom/android/systemui/statusbar/CommandQueue;
    .locals 2

    .line 2028
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mCommandQueue"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method public getDisableFlag()I
    .locals 2

    .line 2293
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mDisabled1"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDoubleTapPowerOpAppIntent(I)Landroid/content/Intent;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 685
    iget p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    if-eqz p1, :cond_4

    const-string v2, "OpStatusBar"

    if-ne p1, v0, :cond_1

    .line 688
    new-instance p1, Landroid/content/Intent;

    const-string v0, "coloros.wallet.intent.action.OPEN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 689
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 693
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const-string v5, "com.amazon.dee.app"

    invoke-static {p1, v5, v3, v4}, Lcom/oneplus/util/OpUtils;->isPackageInstalledAsUser(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 694
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportDoubleTapAlexa()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "launch alexa"

    .line 695
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAlexaIntent:Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_2

    const-string p1, "getLaunchIntent of alexa"

    .line 699
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_0

    const-string v1, "isAlexa"

    .line 704
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 710
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DoubleTapPower: getDoubleTapPowerOpAppIntent "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v1
.end method

.method public getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;
    .locals 0

    .line 1422
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    return-object p0
.end method

.method public getGestureButtonController()Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;
    .locals 0

    .line 2459
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    return-object p0
.end method

.method public getGestureOnlineConfig()Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;
    .locals 0

    .line 2527
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    return-object p0
.end method

.method public getKeyguardUnlockCounter()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;
    .locals 1

    .line 2505
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2506
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->getKeyguardUnlockCounter()Lcom/oneplus/systemui/keyguard/OpKeyguardUnlockCounter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNavigationBarHiddenMode()I
    .locals 0

    .line 741
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavType:I

    return p0
.end method

.method public getOneHandModeController()Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;
    .locals 0

    .line 2465
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    return-object p0
.end method

.method public getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;
    .locals 0

    .line 2472
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCameraAnim:Lcom/oneplus/anim/OpCameraAnimateController;

    return-object p0
.end method

.method public getOpStatusBarView()Landroid/view/View;
    .locals 3

    .line 2035
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getStatusBarView"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getSystemIconAreaMaxWidth(I)I
    .locals 9

    .line 2121
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpStatusBarView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2125
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 2128
    sget v2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2129
    sget v3, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 2131
    sget v4, Lcom/android/systemui/R$id;->battery:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2134
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    .line 2135
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    .line 2137
    const-class v6, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v6}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v6

    .line 2138
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    .line 2142
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/util/OpUtils;->getMaxDotsForNotificationIconContainer(Landroid/content/Context;)I

    move-result v7

    .line 2144
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_1

    if-lez v7, :cond_1

    .line 2145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v8, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/2addr p0, v7

    goto :goto_0

    :cond_1
    move p0, v0

    .line 2149
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int/2addr v4, v5

    .line 2150
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v4, v2

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpPhoneStatusBarView;->getHighlightHintWidth()I

    move-result v0

    :cond_2
    add-int/2addr v4, v0

    add-int/2addr v4, p0

    sub-int/2addr v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method protected getUnlockScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getmStatusBarCollapseListener()Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;
    .locals 0

    .line 2517
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStatusBarCollapseListener:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;

    return-object p0
.end method

.method protected inflateOPAodView(Landroid/content/Context;)V
    .locals 2

    .line 906
    sget v0, Lcom/android/systemui/R$layout;->op_aod_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public isAppFullScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCameraForeground()Z
    .locals 1

    .line 2480
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2481
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isCameraForeground()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraNotchIgnoreSetting()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDoubleTapCamera()Z
    .locals 0

    .line 662
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerApp:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isImeStateChange()Z
    .locals 0

    .line 2342
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeStateChange:Z

    return p0
.end method

.method public isQsDisabled()Z
    .locals 0

    .line 900
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQsDisabled:Z

    return p0
.end method

.method public synthetic lambda$new$0$OpStatusBar()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->lambda$new$0()V

    return-void
.end method

.method public launchHighlightHintAp()V
    .locals 3

    const-string v0, "OpStatusBar"

    const-string v1, "launchHighlightHintAp"

    .line 945
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 949
    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method protected makeStatusBarView(Landroid/content/Context;)V
    .locals 1

    .line 718
    const-class p1, Lcom/oneplus/networkspeed/NetworkSpeedController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/networkspeed/NetworkSpeedController;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    .line 719
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNetworkSpeedController:Lcom/oneplus/networkspeed/NetworkSpeedController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->setNetworkSpeedController(Lcom/oneplus/networkspeed/NetworkSpeedController;)V

    .line 724
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOrientation:I

    .line 725
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->setUpHighlightHintInfo()V

    .line 729
    new-instance p1, Lcom/oneplus/anim/OpCameraAnimateController;

    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/anim/OpCameraAnimateController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCameraAnim:Lcom/oneplus/anim/OpCameraAnimateController;

    .line 730
    invoke-virtual {p1}, Lcom/oneplus/anim/OpCameraAnimateController;->init()V

    return-void
.end method

.method public notifyBarHeightChange(Z)V
    .locals 4

    .line 1438
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    .line 1440
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 1441
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastExpand:Z

    if-eq v2, p1, :cond_3

    if-eqz v1, :cond_3

    .line 1442
    sget-boolean v2, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BarHeight change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", alpha:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpStatusBar"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    sget-boolean v2, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationShadeWindowController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1447
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationShadeWindowController()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->debugBarHeight()V

    .line 1450
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    if-nez p1, :cond_2

    .line 1451
    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyBarHeightChange(Z)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 1453
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1454
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->resetForceHide()V

    .line 1458
    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mLastExpand:Z

    return-void
.end method

.method public notifyCameraLaunching(Ljava/lang/String;Z)Z
    .locals 1

    .line 1415
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1416
    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/faceunlock/OpFacelockController;->notifyCameraLaunching(ZLjava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected notifyImeWindowVisible(ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 2313
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeDisplayId:I

    .line 2314
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mToken:Landroid/os/IBinder;

    .line 2315
    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeVisibleState:I

    .line 2316
    iput p4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mBackDisposition:I

    .line 2317
    iput-boolean p5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mShowImeSwitcher:Z

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2318
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeShow:Z

    .line 2319
    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeStateChange:Z

    .line 2322
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCheckNavigationBarTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "OpStatusBar"

    const-string p2, "Check navigation bar state when ime state change"

    .line 2323
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkNavigationBarState()V

    :cond_1
    return-void
.end method

.method public onAlwaysOnEnableChanged(Z)V
    .locals 2

    .line 1536
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$14;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$14;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 1

    .line 1371
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 1374
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->onBrickModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 1377
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkToStopDozing()V

    goto :goto_0

    .line 1379
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkToStartDozing()V

    :goto_0
    return-void
.end method

.method public onEmptySpaceClick()V
    .locals 3

    .line 1392
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1393
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onEmptySpaceClick(F)Z

    :cond_1
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 3

    .line 1118
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    const-string v1, "OpStatusBar"

    if-eqz v0, :cond_0

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthenticated mOpDozingRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " playAodWakingUpAnimation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    .line 1120
    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->playAodWakingUpAnimation()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->playAodWakingUpAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "onFingerprintAuthenticated"

    .line 1124
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onPlayFingerprintUnlockAnimation(Z)V

    .line 1127
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startWakingUpAnimation()V

    :cond_2
    return-void
.end method

.method public onFingerprintPoke()V
    .locals 2

    .line 1524
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$13;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$13;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHighlightHintInfoChange()V
    .locals 1

    .line 973
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getHighlighColor()I

    .line 974
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkBarModes()V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 1

    .line 955
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->getHighlighColor()I

    .line 956
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkBarModes()V

    .line 958
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->setUpHighlightHintInfo()V

    return-void
.end method

.method public onSingleTap()V
    .locals 2

    .line 1513
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$12;

    invoke-direct {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$12;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 2

    .line 1497
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isMotionAwakeOn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isSingleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1502
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$11;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$11;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWakingAndUnlocking()V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->onWakingAndUnlocking()V

    const-string v0, "OpStatusBar"

    const-string v1, "onWakingAndUnlocking"

    .line 926
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->isWakingAndUnlockByFP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkToStopDozing()V

    :cond_0
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected opDispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "highlight"

    .line 1846
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "start"

    const-string v2, "chronometer"

    const-string v3, "show"

    const-string v4, "type"

    const-string v5, "enable"

    const-string v6, "mode"

    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1848
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1850
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1853
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1854
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1856
    invoke-virtual {p0, v0, v7}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->showDemoHighLight(ZZ)V

    :cond_0
    const-string v0, "carmode_highlight"

    .line 1859
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1860
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1861
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1863
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1864
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1866
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1867
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->showDemooCarModeHighLight(ZZ)V

    :cond_1
    return-void
.end method

.method protected opOnConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1576
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    const-string v1, "OpStatusBar"

    if-eqz v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opOnConfigChanged newConfig "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    .line 1582
    iput v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOrientation:I

    .line 1585
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->setUpHighlightHintInfo()V

    .line 1587
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkIfThemeChanged()V

    .line 1589
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 1592
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    if-eqz p1, :cond_3

    .line 1593
    sget-boolean p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "OpEdgeBackGestureHandler onConfigurationChanged "

    .line 1594
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1597
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1598
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpEdgeBackGestureHandler:Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpEdgeBackGestureHandler;->onConfigurationChanged(I)V

    .line 1603
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_4

    .line 1604
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10501ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1606
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_4
    return-void
.end method

.method protected opOnDensityOrFontScaleChanged()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->inflateOPAodView(Landroid/content/Context;)V

    .line 913
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodWindowManager;->updateView(Landroid/widget/RelativeLayout;)V

    .line 914
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOPAodWindow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onDensityOrFontScaleChanged(Landroid/view/ViewGroup;)V

    .line 916
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public opOnFinishedWakingUp()V
    .locals 2

    const-string v0, "OpStatusBar"

    const-string v1, "opOnFinishedWakingUp"

    .line 1151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startWakingUpAnimation()V

    return-void
.end method

.method protected opOnOverlayChanged()V
    .locals 2

    .line 1553
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpStatusBar"

    const-string v1, "opOnOverlayChanged"

    .line 1554
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_1

    .line 1558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onOverlayChanged()V

    :cond_1
    return-void
.end method

.method public opOnStartedGoingToSleep()V
    .locals 3

    const-string v0, "OpStatusBar"

    const-string v1, "opOnStartedGoingToSleep"

    .line 1132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->cancelWakingupScrimAnimation()V

    const/4 v1, 0x0

    .line 1136
    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWakingUpAnimationStart:Z

    .line 1137
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v2, v1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onPlayFingerprintUnlockAnimation(Z)V

    .line 1141
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isCTSStart:Z

    if-nez v1, :cond_0

    .line 1142
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->prepare()V

    goto :goto_0

    :cond_0
    const-string p0, "don\'t request show wakingUpScrim for PIP window test"

    .line 1144
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected opOnUiModeChanged()V
    .locals 2

    .line 1564
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpStatusBar"

    const-string v1, "opOnUiModeChanged"

    .line 1565
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 1569
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->onUiModeChanged()V

    .line 1572
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkIfThemeChanged()V

    return-void
.end method

.method public opUpdateDozing()V
    .locals 3

    .line 980
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpDozingRequested:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 981
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    .line 982
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 994
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 1000
    :goto_2
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCustomDozing:Z

    if-eq v0, v1, :cond_3

    .line 1001
    iput-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCustomDozing:Z

    .line 1003
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDozeScrimController()Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCustomDozing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(Z)V

    .line 1008
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardViewMediator()Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCustomDozing:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAodShowing(Z)V

    :cond_3
    return-void
.end method

.method protected opUpdateResources()V
    .locals 2

    .line 1014
    sget-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpStatusBar"

    const-string v1, "opUpdateResources"

    .line 1015
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQuickBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    :cond_1
    return-void
.end method

.method protected opUpdateScrimController()V
    .locals 4

    const-string v0, "StatusBar#updateScrimController"

    .line 1765
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1768
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    .line 1776
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;

    move-result-object v1

    .line 1778
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1777
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setExpansionAffectsAlpha(Z)V

    const/4 v2, 0x0

    .line 1787
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setLaunchingAffordanceWithPreview(Z)V

    .line 1794
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1795
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getFaceLockMode()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 1796
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1797
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 1806
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isInLaunchTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getIsKeyguard()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isLaunchCameraWhenFinishedWaking()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1810
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isBrightnessMirrorVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1811
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto/16 :goto_2

    .line 1812
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isPulsing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1813
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 1814
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDozeScrimController()Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object v2

    .line 1813
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto/16 :goto_2

    .line 1815
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDozeServiceHost()Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$OpDozeCallbacks;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->hasPendingScreenOffCallback()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1816
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v2, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$15;

    invoke-direct {v2, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$15;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_2

    .line 1822
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 1823
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 1824
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getIsKeyguard()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 1825
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 1826
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBubbleController()Lcom/android/systemui/bubbles/BubbleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1827
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BUBBLE_EXPANDED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_2

    .line 1829
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getUnlockScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_2

    .line 1809
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getUnlockScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    goto :goto_2

    .line 1802
    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerNeedsScrimming()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1803
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    goto :goto_1

    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 1804
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    .line 1831
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1833
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->updateScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    return-void
.end method

.method protected opVibrateForCameraGesture(Landroid/content/Context;Landroid/os/Vibrator;)Z
    .locals 1

    .line 1695
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportLinearVibration()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x400

    .line 1697
    invoke-static {p1, p0}, Lcom/oneplus/util/VibratorSceneUtils;->isVibratorSceneSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    invoke-static {p1, p2, p0}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeHeadsUps()V
    .locals 1

    .line 1731
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHeadsUpManager()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1734
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 1737
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpNotificationController:Lcom/oneplus/notification/OpNotificationController;

    if-eqz p0, :cond_1

    .line 1738
    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->hideSimpleHeadsUps()V

    :cond_1
    return-void
.end method

.method protected setUpHighlightHintInfo()V
    .locals 2

    .line 963
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->setUpHighlightHintInfo()V

    :cond_0
    return-void
.end method

.method public setmStatusBarCollapseListener(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;)V
    .locals 0

    .line 2513
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStatusBarCollapseListener:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$StatusBarCollapseListener;

    return-void
.end method

.method public shouldHideSensitive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 1548
    const-class p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    .line 1549
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1548
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->shouldHideSensitive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p0

    return p0
.end method

.method public showBouncer(Z)V
    .locals 0

    .line 2454
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    return-void
.end method

.method protected showDemoHighLight(ZZ)V
    .locals 6

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showDemoHighLight show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpStatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    const-string v2, "notification"

    .line 1881
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x32

    if-eqz p1, :cond_2

    .line 1883
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    if-nez p1, :cond_0

    .line 1884
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDemoNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    .line 1886
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 1887
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 1888
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/app/Notification$Builder;->setChronometerBase(J)Landroid/app/Notification$Builder;

    if-eqz p2, :cond_1

    .line 1890
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChronometerState(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1892
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setChronometerState(I)Landroid/app/Notification$Builder;

    .line 1895
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 1896
    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string p0, " send demo HighlightHint"

    .line 1897
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1899
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoHighlightHint:Landroid/app/Notification$Builder;

    .line 1900
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const-string p0, " cancel demo HighlightHint"

    .line 1901
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method protected showDemooCarModeHighLight(ZZ)V
    .locals 6

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showDemooCarModeHighLight show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpStatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    const-string v2, "notification"

    .line 1936
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0xc8

    if-eqz p1, :cond_3

    .line 1938
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    if-nez p1, :cond_0

    .line 1939
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getCarModeDemoNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    .line 1941
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setShowOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 1942
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;

    .line 1943
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/app/Notification$Builder;->setChronometerBase(J)Landroid/app/Notification$Builder;

    .line 1944
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oneplus.carmode.test"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/app/Notification$Builder;->setIntentOnStatusBar(Landroid/content/Intent;)Landroid/app/Notification$Builder;

    if-eqz p2, :cond_1

    .line 1946
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChronometerState(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 1948
    :cond_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setChronometerState(I)Landroid/app/Notification$Builder;

    .line 1951
    :goto_0
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCarModeReceiver:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

    if-nez p1, :cond_2

    .line 1952
    new-instance p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCarModeReceiver:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

    .line 1953
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1954
    invoke-virtual {p1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1955
    iget-object p2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCarModeReceiver:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

    invoke-virtual {p2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1957
    :cond_2
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 1958
    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " send demo carModeHighlightHint intent:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 1961
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDemoCarModeHighlightHint:Landroid/app/Notification$Builder;

    .line 1962
    iget-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCarModeReceiver:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

    if-eqz p2, :cond_4

    .line 1963
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1964
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mCarModeReceiver:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$CarModeScreenshotReceiver;

    .line 1966
    :cond_4
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    const-string p0, " cancel demo carModeHighlightHint"

    .line 1967
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public start()V
    .locals 12

    .line 321
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 327
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$1;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOtaWizardObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    .line 342
    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_need_show_ota_wizard"

    .line 344
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOtaWizardObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 343
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 349
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAlexaIntent:Landroid/content/Intent;

    const-string v2, "amazon.intent.action.ALEXA_LISTEN_PUSHBUTTON"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAlexaIntent:Landroid/content/Intent;

    const-string v2, "com.amazon.dee.app"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mPm:Landroid/content/pm/PackageManager;

    .line 355
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$2;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    const-string v0, "OpStatusBar"

    const-string v2, "FullScreenGestureObserver internal onChange"

    .line 386
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_fullscreen_gesture_type"

    .line 390
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    .line 389
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_gesture_button_side_enabled"

    .line 397
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mFullScreenGestureObserver:Landroid/database/ContentObserver;

    .line 396
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 405
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$3;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$3;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerObserver:Landroid/database/ContentObserver;

    .line 415
    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_app_double_tap_power_gesture"

    .line 417
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDoubleTapPowerObserver:Landroid/database/ContentObserver;

    .line 416
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 422
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$4;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$4;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDisableQsObserver:Landroid/database/ContentObserver;

    .line 433
    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_disable_qs_when_locked"

    .line 435
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDisableQsObserver:Landroid/database/ContentObserver;

    .line 434
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 441
    const-class v0, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeColor:I

    .line 445
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->qs_tile_icon:I

    invoke-static {v0, v2}, Lcom/oneplus/util/OpUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAccentColor:I

    .line 446
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->init(Landroid/content/Context;)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mSpecialTheme:Z

    .line 451
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isGoogleDarkTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mGoogleDarkTheme:Z

    .line 452
    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->init(Landroid/content/Context;)V

    .line 459
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeSetting:Lcom/oneplus/util/SystemSetting;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, v2}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 462
    :cond_0
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "oem_black_mode"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$5;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mThemeSetting:Lcom/oneplus/util/SystemSetting;

    .line 476
    invoke-virtual {v0, v1}, Lcom/oneplus/util/SystemSetting;->setListening(Z)V

    .line 479
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    .line 482
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->initDetectPkgReceiver()V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/util/OpReverseWirelessChargeUtils;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 489
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavLp:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x1000000

    const-string v4, "NavigationBar"

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x7e3

    const v9, 0x20840068

    const/4 v10, -0x3

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavLp:Landroid/view/WindowManager$LayoutParams;

    .line 500
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 501
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$string;->nav_bar:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 503
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mNavLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 504
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v5, v3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10501ac

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 510
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x1

    const/16 v9, 0x7e1

    const v10, 0x20840168

    const/4 v11, -0x3

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    .line 525
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 526
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$string;->nav_bar:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 528
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeNavLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v4, 0x50

    .line 529
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 530
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "telecom"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 539
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    new-array v0, v1, [I

    const/16 v1, 0xdd

    aput v1, v0, v2

    .line 543
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    .line 549
    :cond_3
    new-instance v0, Lcom/oneplus/util/OpBoostUtils;

    invoke-direct {v0}, Lcom/oneplus/util/OpBoostUtils;-><init>()V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpBoostUtils:Lcom/oneplus/util/OpBoostUtils;

    .line 553
    new-instance v0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    return-void
.end method

.method public startDozing()V
    .locals 1

    const/4 v0, 0x1

    .line 2435
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStartDozingRequested:Z

    .line 2436
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "OpStatusBar"

    const-string v0, "Do not start dozing in brick mode"

    .line 2437
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2440
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkToStartDozing()V

    return-void
.end method

.method public startFacelockFailAnimation()V
    .locals 0

    .line 1426
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNotificationPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method protected startWakingUpAnimation()V
    .locals 13

    .line 1159
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWakingUpAnimationStart:Z

    const-string v1, "OpStatusBar"

    if-eqz v0, :cond_0

    const-string p0, "don\'t startWakingUpAnimation since animation started"

    .line 1160
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1163
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mWakingUpAnimationStart:Z

    .line 1164
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->playAodWakingUpAnimation()Z

    move-result v2

    .line 1165
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    .line 1166
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v4

    .line 1167
    const-class v5, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/battery/OpChargingAnimationController;

    invoke-interface {v5}, Lcom/oneplus/battery/OpChargingAnimationController;->isAnimationStarted()Z

    move-result v5

    .line 1168
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBouncerShowing()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 1169
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getIsOccluded()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    if-eqz v6, :cond_1

    .line 1170
    invoke-virtual {v6}, Lcom/oneplus/faceunlock/OpFacelockController;->isScreenOffUnlock()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1172
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraLaunched()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v7

    .line 1178
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v8

    .line 1181
    iget-object v9, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v9}, Lcom/oneplus/aod/OpAodDisplayViewManager;->isNoneFodAnimationStyle()Z

    move-result v9

    .line 1183
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->isCanvasAodAnimation(Landroid/content/Context;Z)Z

    move-result v10

    .line 1184
    sget-boolean v11, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->DEBUG:Z

    if-eqz v11, :cond_2

    .line 1185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startWakingUpAnimation canPlayNotificationAnimation"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isFingerprintUnlock:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " bouncerShow:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getBouncerShowing()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isShowing:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " getIsOccluded:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getIsOccluded()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " playAodWakingUpAnimation:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isScreenOffUnlock:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpFacelockController:Lcom/oneplus/faceunlock/OpFacelockController;

    .line 1189
    invoke-virtual {v12}, Lcom/oneplus/faceunlock/OpFacelockController;->isScreenOffUnlock()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isCameraLaunched:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraLaunched()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isPreventViewShow:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isWarpChargingAnimationStart:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isNoneFodAnimationStyle:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isCanvasAodAnimation: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1185
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->cancelWakingupScrimAnimation()V

    if-eqz v2, :cond_7

    .line 1202
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v2, v8}, Lcom/oneplus/aod/OpAodWindowManager;->genAodDisappearAnimation(Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 1207
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpBoostUtils:Lcom/oneplus/util/OpBoostUtils;

    invoke-virtual {v3}, Lcom/oneplus/util/OpBoostUtils;->aquireGPUBoost()V

    .line 1210
    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;

    invoke-direct {v3, p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v10, :cond_3

    const-string v3, "canvas aod override waking up scrim animation"

    .line 1242
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {v3, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->removeFromWindow(Z)V

    :cond_3
    if-nez v8, :cond_5

    if-eqz v6, :cond_5

    if-nez v10, :cond_4

    .line 1248
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {v3, v0, v7}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->startAnimation(ZZ)V

    .line 1250
    :cond_4
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;

    invoke-direct {v3, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$8;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "mWakingUpAnimation case 1"

    .line 1259
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1264
    :cond_5
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodWindowManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$9;

    invoke-direct {v3, p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$9;-><init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v10, :cond_6

    .line 1271
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {p0, v7, v8}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->startAnimation(ZZ)V

    :cond_6
    const-string p0, "mWakingUpAnimation case 2"

    .line 1273
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1276
    :cond_7
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodWindowManager;->stopDozing()V

    .line 1277
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->stopDozing()V

    .line 1278
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {v2}, Lcom/oneplus/aod/OpAodDisplayViewManager;->resetStatus()V

    const-string v2, "stopDozing"

    .line 1279
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    .line 1285
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraLaunched()Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v9, :cond_8

    .line 1299
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {p0, v7, v7}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->startAnimation(ZZ)V

    const-string p0, "mWakingUpAnimation case 3"

    .line 1300
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1307
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getKeyguardUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isCameraLaunched()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1310
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->removeFromWindowForCameraLaunched()V

    goto :goto_1

    .line 1312
    :cond_9
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mOpWakingUpScrimController:Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpWakingUpScrimController;->removeFromWindow(Z)V

    :goto_1
    const-string p0, "mWakingUpAnimation case 4"

    .line 1315
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public stopDozing()V
    .locals 1

    const/4 v0, 0x0

    .line 2444
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mStartDozingRequested:Z

    .line 2445
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->checkToStopDozing()V

    return-void
.end method

.method public updateImeWindowStatus()V
    .locals 7

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImeWindowStatus ImeStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeStateChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , imeShow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpStatusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeStateChange:Z

    if-eqz v0, :cond_1

    .line 2331
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    .line 2332
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2334
    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeDisplayId:I

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mToken:Landroid/os/IBinder;

    iget v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeVisibleState:I

    iget v5, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mBackDisposition:I

    iget-boolean v6, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mShowImeSwitcher:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    :cond_0
    const/4 v0, 0x0

    .line 2337
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mImeStateChange:Z

    :cond_1
    return-void
.end method

.method public updateQsEnabled()V
    .locals 3

    .line 878
    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mDisableQs:I

    const-string v1, "OpStatusBar"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 879
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 880
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "disable QS"

    .line 883
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQsDisabled:Z

    goto :goto_0

    .line 887
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQsDisabled:Z

    if-eqz v0, :cond_2

    const-string v0, "enable QS"

    .line 888
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    .line 890
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mQsDisabled:Z

    :goto_0
    return-void
.end method
