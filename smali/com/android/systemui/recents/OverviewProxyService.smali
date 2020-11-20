.class public Lcom/android/systemui/recents/OverviewProxyService;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;,
        Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/settings/CurrentUserTracker;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mActiveNavBarRegion:Landroid/graphics/Region;

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field private mAuthenticatingPackage:Ljava/lang/String;

.field private mBound:Z

.field private mConnectionBackoffAttempts:I

.field private final mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBoundedUserId:I

.field private final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field private final mDividerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mInputFocusTransferStarted:Z

.field private mIsEnabled:Z

.field private final mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNavBarButtonAlpha:F

.field private final mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

.field private mNavBarMode:I

.field private mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private final mOverviewServiceConnection:Landroid/content/ServiceConnection;

.field private final mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mPipUI:Lcom/android/systemui/pip/PipUI;

.field private final mQuickStepIntent:Landroid/content/Intent;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

.field private final mStatusBarOptionalLazy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatusBarWinController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private final mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field private mSupportsRoundedCornersOnWindows:Z

.field private mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private mTouchHandler:Landroid/os/Handler;

.field private mWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/NavigationBarController;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/pip/PipUI;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/NavigationBarController;",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            "Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/pip/PipUI;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/stackdivider/Divider;",
            ">;",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    .line 792
    invoke-direct {p0, p10}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 159
    new-instance p10, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$2FrwSEVJnaHX9GGsAnD2I96htxU;

    invoke-direct {p10, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$2FrwSEVJnaHX9GGsAnD2I96htxU;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object p10, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    const/4 p10, -0x1

    .line 171
    iput p10, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    const/4 p10, 0x0

    .line 178
    iput p10, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAuthenticatingPackage:Ljava/lang/String;

    .line 218
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 670
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$53s1j2vSUNo_EjM7u2nSTJl32gM;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$53s1j2vSUNo_EjM7u2nSTJl32gM;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 676
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$2;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 700
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/OverviewProxyService$3;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    .line 778
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$b7uhSpdl46tRQQQT8ZW7Bieyg6A;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$b7uhSpdl46tRQQQT8ZW7Bieyg6A;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 781
    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$FF1twVzMKp_FAsQO2IsbqUbCb-s;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$FF1twVzMKp_FAsQO2IsbqUbCb-s;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 993
    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/systemui/recents/OverviewProxyService$5;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    .line 1330
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$6;

    new-instance v1, Landroid/os/Handler;

    .line 1331
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$6;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 793
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 794
    iput-object p7, p0, Lcom/android/systemui/recents/OverviewProxyService;->mPipUI:Lcom/android/systemui/pip/PipUI;

    .line 795
    iput-object p9, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    .line 796
    new-instance p7, Landroid/os/Handler;

    invoke-direct {p7}, Landroid/os/Handler;-><init>()V

    iput-object p7, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 797
    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 798
    iput-object p5, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 799
    iput p10, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 800
    iput-object p8, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDividerOptional:Ljava/util/Optional;

    const p3, 0x1040251

    .line 801
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 803
    new-instance p3, Landroid/content/Intent;

    const-string p7, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {p3, p7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p7, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 804
    invoke-virtual {p7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3, p7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 805
    iget-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 806
    iget-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 807
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    .line 808
    iput-object p6, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 809
    new-instance p3, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$UsZDbsgQ2Qpz6L03F4-TRLuFj_w;

    invoke-direct {p3, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$UsZDbsgQ2Qpz6L03F4-TRLuFj_w;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {p6, p3}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 812
    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    .line 815
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 818
    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p4, "package"

    .line 819
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 820
    iget-object p4, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string p4, "android.intent.action.PACKAGE_CHANGED"

    .line 822
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    iget-object p4, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object p6, p0, Lcom/android/systemui/recents/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p4, p6, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 826
    iget-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWindowCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    invoke-virtual {p5, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 827
    new-instance p3, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {p3, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 830
    new-instance p1, Lcom/android/systemui/recents/OverviewProxyService$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService$4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 846
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mTouchHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyLeaveOneHand()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyStartAssistant(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantGestureCompletion(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/recents/OverviewProxyService;F)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantProgress(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDividerOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/recents/OverviewProxyService;)F
    .locals 0

    .line 138
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    return p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/recents/OverviewProxyService;)Z
    .locals 0

    .line 138
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/model/SysUiState;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/recents/OverviewProxyService;I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->sendAssistantAvailabilityInternal()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/recents/OverviewProxyService;F)F
    .locals 0

    .line 138
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/database/ContentObserver;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAssistContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/ContentResolver;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchLauncherTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchCancelTouch()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/pip/PipUI;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mPipUI:Lcom/android/systemui/pip/PipUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAuthenticatingPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/recents/OverviewProxyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mAuthenticatingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/internal/util/ScreenshotHelper;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/recents/OverviewProxyService;)I
    .locals 0

    .line 138
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/recents/OverviewProxyService;I)I
    .locals 0

    .line 138
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/recents/OverviewProxyService;I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyQuickSwitchToNewTask(I)V

    return-void
.end method

.method private disconnectFromLauncherService()V
    .locals 3

    .line 1117
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1120
    iput-boolean v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    .line 1124
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 1125
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1126
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyNavBarButtonAlphaChanged(FZ)V

    .line 1127
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    :cond_1
    return-void
.end method

.method private dispatchCancelTouch()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$Z19I_tELwOlnuL7KNEkdaAv28b4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$Z19I_tELwOlnuL7KNEkdaAv28b4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchLauncherTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$qcx0rufL4E7LgQgEhF9Bk13yjro;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$qcx0rufL4E7LgQgEhF9Bk13yjro;-><init>(Lcom/android/systemui/recents/OverviewProxyService;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private dispatchNavButtonBounds()V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    if-eqz p0, :cond_0

    .line 958
    :try_start_0
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to call onActiveNavBarRegionChanges()"

    .line 960
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private internalConnectToCurrentUser()V
    .locals 6

    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService()V

    .line 1050
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    const-string v1, "OverviewProxyService"

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot attempt connection, is enabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    .line 1056
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1058
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    const v4, 0x2000001

    .line 1061
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1058
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to bind because of security error"

    .line 1063
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mBound:Z

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1070
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$2FrwSEVJnaHX9GGsAnD2I96htxU(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public static synthetic lambda$UsZDbsgQ2Qpz6L03F4-TRLuFj_w(Lcom/android/systemui/recents/OverviewProxyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method

.method public static synthetic lambda$b7uhSpdl46tRQQQT8ZW7Bieyg6A(Lcom/android/systemui/recents/OverviewProxyService;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/OverviewProxyService;->onStatusBarStateChanged(ZZZ)V

    return-void
.end method

.method private synthetic lambda$cleanupAfterDeath$1(Ldagger/Lazy;)V
    .locals 2

    const/4 v0, 0x0

    .line 969
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 970
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    return-void
.end method

.method private synthetic lambda$cleanupAfterDeath$2()V
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarOptionalLazy:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$r1ukwXYi8j1mxwBUvifNk9B4ue4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$r1ukwXYi8j1mxwBUvifNk9B4ue4;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$dispatchCancelTouch$4(Ldagger/Lazy;)V
    .locals 2

    .line 1033
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchCancelTouch, event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewProxyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 1036
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MERONG dispatchNotificationPanelTouchEvent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 1039
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 1040
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    :cond_1
    return-void
.end method

.method private synthetic lambda$dispatchLauncherTouch$3(Landroid/view/MotionEvent;Ldagger/Lazy;)V
    .locals 3

    .line 1009
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 1014
    invoke-virtual {p2, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->dispatchNotificationsPanelTouchEvent(Landroid/view/MotionEvent;)V

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_1

    .line 1017
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 1020
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchLauncherTouch, event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    if-eqz p2, :cond_4

    .line 1022
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    const/4 p2, 0x0

    .line 1023
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarGestureDownEvent:Landroid/view/MotionEvent;

    .line 1026
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const-string v0, "OverviewProxyService"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    .line 671
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    return-void
.end method

.method private notifyAssistantGestureCompletion(F)V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantGestureCompletion(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAssistantProgress(F)V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onAssistantProgress(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyConnectionChanged()V
    .locals 4

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyLeaveOneHand()V
    .locals 2

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overviewproxy notifyLeaveOneHand  mOneHandListener is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewProxyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    if-eqz p0, :cond_1

    .line 1324
    invoke-interface {p0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;->leaveOneHand()V

    :cond_1
    return-void
.end method

.method private notifyQuickSwitchToNewTask(I)V
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onQuickSwitchToNewTask(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyStartAssistant(Landroid/os/Bundle;)V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->startAssistant(Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySystemUiStateFlags(I)V
    .locals 3

    const-string v0, "OverviewProxyService"

    .line 900
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 902
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindowState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 904
    sget v1, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_STATE_STATUS_BAR_HIDDEN:I

    or-int/2addr p1, v1

    .line 914
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_1

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemUi flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSystemUiStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to notify sysui state change"

    .line 919
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onStatusBarStateChanged(ZZZ)V
    .locals 5

    .line 939
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/16 v4, 0x40

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 v3, 0x200

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 941
    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/16 p1, 0x8

    .line 943
    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 944
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method private retryConnectionWithBackoff()V
    .locals 4

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 1078
    iget v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 1079
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    .line 1078
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 1080
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    iget v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect on attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendAssistantAvailabilityInternal()V
    .locals 6

    const-string v0, "OverviewProxyService"

    .line 1344
    const-class v1, Lcom/android/systemui/assist/AssistManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/AssistManager;

    const/4 v2, -0x2

    .line 1345
    invoke-virtual {v1, v2}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1347
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1349
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send assistant availability data to launcher "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v4

    if-eqz v1, :cond_1

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    .line 1351
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 1350
    :goto_1
    invoke-interface {v4, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "Unable to send assistant availability data to launcher"

    .line 1353
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private updateEnabledState()V
    .locals 4

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    .line 1224
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v2

    const/high16 v3, 0x100000

    .line 1222
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    .line 1090
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarButtonAlpha:F

    invoke-interface {p1, p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public addOneHandListener(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;)V
    .locals 2

    const-string v0, "OverviewProxyService"

    const-string v1, "Overviewproxy addOneHandListener"

    .line 1273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    return-void
.end method

.method public cleanupAfterDeath()V
    .locals 2

    .line 966
    iget-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$PSR8w04DgkmYl0QS7DaTBJbM_iU;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$PSR8w04DgkmYl0QS7DaTBJbM_iU;-><init>(Lcom/android/systemui/recents/OverviewProxyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 975
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->startConnectionToCurrentUser()V

    .line 978
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mDividerOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/stackdivider/Divider;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/Divider;->setMinimized(Z)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "OverviewProxyService state:"

    .line 1240
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  recentsComponentName="

    .line 1241
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  isConnected="

    .line 1242
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  connectionBackoffAttempts="

    .line 1243
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  quickStepIntent="

    .line 1245
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  quickStepIntentResolved="

    .line 1246
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/model/SysUiState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string p1, " mInputFocusTransferStarted="

    .line 1248
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getNavBarMode()I
    .locals 0

    .line 1234
    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    return p0
.end method

.method public getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    .line 1107
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p0
.end method

.method public getSysUIProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 0

    .line 1112
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 1103
    iget-boolean p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    return p0
.end method

.method public synthetic lambda$cleanupAfterDeath$1$OverviewProxyService(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$1(Ldagger/Lazy;)V

    return-void
.end method

.method public synthetic lambda$cleanupAfterDeath$2$OverviewProxyService()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$cleanupAfterDeath$2()V

    return-void
.end method

.method public synthetic lambda$dispatchCancelTouch$4$OverviewProxyService(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$dispatchCancelTouch$4(Ldagger/Lazy;)V

    return-void
.end method

.method public synthetic lambda$dispatchLauncherTouch$3$OverviewProxyService(Landroid/view/MotionEvent;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$dispatchLauncherTouch$3(Landroid/view/MotionEvent;Ldagger/Lazy;)V

    return-void
.end method

.method public synthetic lambda$new$0$OverviewProxyService()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->lambda$new$0()V

    return-void
.end method

.method public notifyBackAction(ZIIZZ)V
    .locals 7

    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    .line 860
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBackAction(ZIIZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyService"

    const-string p2, "Failed to notify back action"

    .line 863
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyKeyguardDone()V
    .locals 2

    const-string v0, "OverviewProxyService"

    .line 926
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_0

    .line 927
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onKeyguardDone()V

    const-string p0, "notifyKeyguardDone"

    .line 928
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to notify keyguard done"

    .line 931
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyNavBarButtonAlphaChanged(FZ)V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onNavBarButtonAlphaChanged(FZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySplitScreenBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "OverviewProxyService"

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v1, :cond_0

    .line 1205
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onSplitScreenSecondaryBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to get overview proxy for split screen bounds."

    .line 1208
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call onSplitScreenSecondaryBoundsChanged()"

    .line 1211
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method notifyToggleRecentApps()V
    .locals 2

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1217
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onToggleRecentApps()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActiveNavBarRegionChanges(Landroid/graphics/Region;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mActiveNavBarRegion:Landroid/graphics/Region;

    .line 952
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 1229
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    const/4 p1, 0x0

    .line 852
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 853
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public shouldShowSwipeUpUI()Z
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startConnectionToCurrentUser()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 988
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService;->internalConnectToCurrentUser()V

    :goto_0
    return-void
.end method

.method public updateSystemUIStateFlagsInternal()V
    .locals 8

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 1281
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    .line 1283
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 1292
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v2, "OverviewProxyService"

    if-eqz v1, :cond_1

    const-string v1, "Update system ui flag state to launcher when navigation bar is hidden"

    .line 1293
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getDisableFlag()I

    move-result v1

    .line 1297
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/16 v4, 0x80

    const/high16 v5, 0x1000000

    and-int/2addr v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1298
    invoke-virtual {v3, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 1299
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/16 v4, 0x100

    const/high16 v5, 0x200000

    and-int/2addr v1, v5

    if-eqz v1, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v3, v4, v6}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1300
    invoke-virtual {v3, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 1303
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 1304
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update nav bar hidden :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/4 v3, 0x2

    .line 1308
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v1

    xor-int/2addr v1, v7

    .line 1307
    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1308
    invoke-virtual {v2, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 1312
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1313
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1314
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyExpanded()Z

    move-result v3

    .line 1313
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1314
    invoke-virtual {v1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 1317
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0}, Lcom/android/systemui/model/SysUiState;->getFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public updateSystemUiStateFlags()V
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    .line 874
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarController:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 876
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    .line 883
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 886
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updatePanelSystemUiStateFlags()V

    .line 887
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    if-eqz v0, :cond_2

    .line 890
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->notifyStateChangedCallbacks()V

    .line 894
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v0}, Lcom/android/systemui/model/SysUiState;->getFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    return-void
.end method
