.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarActionEvent;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mAppearance:I

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field private mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

.field protected final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mAssistantAvailable:Z

.field private final mAutoDim:Ljava/lang/Runnable;

.field private mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field private mBackupNavBarMode:I

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mCheckNavigationBarState:Ljava/lang/Runnable;

.field private final mCloseByPassThreshold:Ljava/lang/Runnable;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRotation:I

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field public mDisplayId:I

.field private final mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mForceNavBarHandleOpaque:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHideNavBar:Z

.field public mHomeBlockedThisTouch:Z

.field private mImeShow:Z

.field private mIsInBrickMode:Z

.field private mIsOnDefaultDisplay:Z

.field private mLastLockToAppLongPress:J

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavActionListener:Landroid/view/View$OnClickListener;

.field private mNavBarMode:I

.field private mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

.field private mNavigationBarColor:I

.field private mNavigationBarMode:I

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private mOrientation:I

.field private mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

.field private mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOrientationHandleIntensityListener:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;

.field private mOrientationParams:Landroid/view/WindowManager$LayoutParams;

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mRecentsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

.field private final mRotationWatcher:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowOrientedHandleForImmersiveMode:Z

.field private mStartingQuickSwitchRotation:I

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

.field private final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field private mTransientShown:Z

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/stackdivider/Divider;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/stackdivider/Divider;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/accessibility/SystemActions;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    const/4 v2, 0x0

    .line 184
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v2, 0x0

    .line 186
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 188
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 218
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    const/4 v3, -0x1

    .line 243
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    .line 274
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    .line 275
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarColor:I

    .line 277
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsInBrickMode:Z

    .line 286
    iput v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBackupNavBarMode:I

    .line 290
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mImeShow:Z

    .line 295
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$2a6PQeDykikHzH0rBVD4AZZp14o;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$2a6PQeDykikHzH0rBVD4AZZp14o;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCloseByPassThreshold:Ljava/lang/Runnable;

    .line 308
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

    .line 343
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 431
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandleIntensityListener:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;

    .line 439
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$64cObUVomQJ4mZyswq0vgRauVPI;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$64cObUVomQJ4mZyswq0vgRauVPI;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    .line 447
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$BSA_kMakLk5yiXdgwYZ_AoVEsRo;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$BSA_kMakLk5yiXdgwYZ_AoVEsRo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    .line 449
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;

    new-instance v4, Landroid/os/Handler;

    .line 450
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 467
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1259
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavActionListener:Landroid/view/View$OnClickListener;

    .line 1673
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCheckNavigationBarState:Ljava/lang/Runnable;

    .line 1710
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1777
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$rPVTsn99rxp2rmSxt8MZ9ZaaU_I;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$rPVTsn99rxp2rmSxt8MZ9ZaaU_I;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Ljava/util/function/Consumer;

    .line 1784
    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, p1

    .line 498
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-object v3, p2

    .line 499
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v3, p7

    .line 500
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v3, p3

    .line 501
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 502
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    move-object v3, p8

    .line 503
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v3, p13

    .line 504
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v3, p15

    .line 506
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const/4 v3, -0x2

    .line 507
    invoke-virtual {p4, v3}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    move-object v1, p5

    .line 508
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    move-object v1, p6

    .line 510
    invoke-virtual {p6, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    move-object v1, p9

    .line 511
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p10

    .line 512
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v1, p11

    .line 513
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    move-object/from16 v1, p12

    .line 514
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v1, p16

    .line 515
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v1, p17

    .line 516
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p18

    .line 517
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isTransientShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->orientSecondaryHomeHandle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I
    .locals 0

    .line 162
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Ldagger/Lazy;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mForceNavBarHandleOpaque:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mForceNavBarHandleOpaque:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideNavBar(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Lcom/android/systemui/recents/OverviewProxyService;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->clearTransient()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;I)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sendAssistantAvailability(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;I)I
    .locals 0

    .line 162
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mShowOrientedHandleForImmersiveMode:Z

    return p1
.end method

.method private static barMode(ZI)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit8 p0, p1, 0x6

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_2

    return v0

    :cond_2
    and-int/lit8 p0, p1, 0x2

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private canShowSecondaryHandle()Z
    .locals 1

    .line 1738
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkBarModes()V
    .locals 1

    .line 1584
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 1585
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_0

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :goto_0
    return-void
.end method

.method private checkHideNavBarState()V
    .locals 2

    .line 1904
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBackupNavBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1908
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NavigationBar"

    const-string v1, "checkHideNavBarState: It\'s gesture mode. Reset state to showing."

    .line 1909
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1910
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    :cond_1
    return-void
.end method

.method private clearTransient()V
    .locals 1

    .line 1094
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1095
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    .line 1096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->handleTransientChanged()V

    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 7

    .line 1813
    sput-object p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sContext:Landroid/content/Context;

    .line 1816
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1826
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1828
    sget v0, Lcom/android/systemui/R$string;->nav_bar:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 1829
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1830
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1832
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->navigation_bar_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 1838
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1839
    invoke-virtual {v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1840
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$9;

    invoke-direct {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$9;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1860
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0, v0, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private deltaRotation(II)I
    .locals 0

    sub-int/2addr p2, p1

    if-gez p2, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private handleTransientChanged()V
    .locals 2

    .line 1101
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 1105
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onTransientStateChanged(Z)V

    .line 1107
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(ZI)I

    move-result v0

    .line 1108
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateBarMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarModeChanged(I)V

    :cond_2
    return-void
.end method

.method private initSecondaryHomeHandleForRotation()V
    .locals 8

    .line 776
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->canShowSecondaryHandle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    .line 781
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 783
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    .line 785
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandleIntensityListener:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)F

    .line 786
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    const v6, 0x20800128

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    .line 794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecondaryHomeHandle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 796
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 799
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$WBR057y3e1A5lbkY-xhTKGb4TAo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$WBR057y3e1A5lbkY-xhTKGb4TAo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isTransientShown()Z
    .locals 0

    .line 1579
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    return p0
.end method

.method public static synthetic lambda$0mmLLxBq7RxotphHQB_RtYb4SpQ(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$RtBTLxltRKo37YrTKiaCXCxwRDg(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VEqqEZFjg0f3lWOW2BJ66Oo_2aE(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$X9JO9eLzlFoQkYf8XrZG-l2EMsk(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Ylizyb5K7ZQr77j1Ehc8SUjcI6E(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$disableAnimationsDuringHide$5()V
    .locals 1

    .line 1683
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$dtGeJfWz2E4_XAoQgX8peIw4kU8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dxES00kAyC8r2RmY9FwTYgUhoj8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public static synthetic lambda$eFJm5m1txtISSi8Cx3m3pc8Nvjw(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onVerticalChanged(Z)V

    return-void
.end method

.method private synthetic lambda$initSecondaryHomeHandleForRotation$3()V
    .locals 3

    .line 801
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->computeHomeHandleBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 806
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->mapRectFromViewToScreenCoords(Landroid/graphics/RectF;Z)V

    .line 807
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 808
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 809
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRegionSamplingHelper()Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->setByPassThreshold(Z)V

    .line 299
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeHandle()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->triggerChangeColorAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 443
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAutoDim(Z)V

    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/Integer;)V
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1779
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->needsReorient(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1780
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$oZtQ9jE1OTI8AtitIxsN6ETT4sc(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onNavigationModeChanged$4()V
    .locals 0

    .line 1643
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 1644
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    return-void
.end method

.method public static synthetic lambda$y_1OHmWTpLl8uCcO3A0Am620g94(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private notifyNavigationBarScreenOn()V
    .locals 0

    .line 1216
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .locals 0

    .line 1463
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 1464
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 1465
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1464
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1469
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 1470
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1471
    const-class v0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 1472
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onHideNavBar(Z)V
    .locals 2

    .line 1887
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1889
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHideNavBar(Z)V

    .line 1891
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setHideNavBarOn(Z)V

    .line 1892
    :cond_1
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHideNavBar mHideNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHideNavBar:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " forceShow="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavigationBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1279
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 1285
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1301
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_0

    .line 1287
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 1289
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_3

    .line 1290
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1291
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "NavigationBar"

    const-string p2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    .line 1292
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    return v0

    :cond_3
    :goto_0
    return p2
.end method

.method private onLongPressBackHome(Landroid/view/View;)Z
    .locals 2

    .line 1365
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->home:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .locals 2

    .line 1369
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressNavigationButtons(Landroid/view/View;II)Z
    .locals 9

    const/4 v0, 0x0

    .line 1389
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 1390
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 1391
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 1395
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1399
    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v5, v2, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 1431
    :try_start_2
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 1433
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v4

    .line 1402
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_2

    .line 1403
    sget p2, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p2, :cond_1

    .line 1404
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p2

    goto :goto_0

    .line 1405
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p2

    .line 1406
    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v0

    .line 1412
    :goto_1
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    goto :goto_3

    .line 1415
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v5, p2, :cond_4

    move p2, v4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 1431
    :try_start_4
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 1433
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    return v4

    .line 1422
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, p3, :cond_7

    .line 1423
    sget p1, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p1, :cond_6

    .line 1424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressRecents()Z

    move-result p0

    goto :goto_2

    .line 1425
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 1426
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeLongClick(Landroid/view/View;)Z

    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    return p0

    :cond_7
    move p2, v0

    :goto_3
    if-eqz p2, :cond_8

    .line 1438
    :try_start_6
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 p0, 0x80

    .line 1439
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    .line 1440
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v4

    :catchall_0
    move-exception p0

    .line 1435
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NavigationBar"

    const-string p2, "Unable to reach activity manager"

    .line 1444
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return v0
.end method

.method private onLongPressRecents()Z
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecentsOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 1451
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 1454
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1458
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v0, 0x10f

    const/16 v1, 0x11e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1312
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .locals 1

    .line 1356
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 1360
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1361
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    if-nez p2, :cond_0

    .line 1344
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1346
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1348
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onVerticalChanged(Z)V
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    return-void
.end method

.method private orientSecondaryHomeHandle()V
    .locals 7

    .line 816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->canShowSecondaryHandle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 820
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->isDividerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 825
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCurrentRotation:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->deltaRotation(II)I

    move-result v0

    .line 826
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    if-eq v2, v1, :cond_2

    if-ne v0, v1, :cond_3

    .line 828
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secondary nav delta rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 835
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;->setDeltaRotation(I)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_4

    move v1, v4

    move v5, v1

    goto :goto_0

    .line 839
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 840
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    goto :goto_0

    .line 845
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mShowOrientedHandleForImmersiveMode:Z

    if-nez v5, :cond_6

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->resetSecondaryHandle()V

    return-void

    .line 849
    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 850
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 854
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_7

    const/16 v2, 0x50

    goto :goto_1

    :cond_7
    if-ne v0, v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x5

    .line 856
    :goto_1
    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 858
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 859
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 861
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 823
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->resetSecondaryHandle()V

    :goto_3
    return-void
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 1227
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1231
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportHideNavBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 1233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 1238
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    .line 1240
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 1241
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 1244
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 1246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 1247
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1248
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 1251
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 1255
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method private refreshLayout(I)V
    .locals 0

    .line 1181
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_0

    .line 1182
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private registerAction(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1505
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/SystemActions;->register(I)V

    goto :goto_0

    .line 1507
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/SystemActions;->unregister(I)V

    :goto_0
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 1197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1196
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetSecondaryHandle()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 869
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 872
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 873
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOrientedHandleSamplingRegion(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private sendAssistantAvailability(Z)V
    .locals 1

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1545
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1546
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1545
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "NavigationBar"

    const-string p1, "Unable to send assistant availability data to launcher"

    .line 1548
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private setDisabled2Flags(I)V
    .locals 0

    .line 1173
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onDisable2FlagChanged(I)V

    :cond_0
    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 4

    const/4 p1, 0x1

    new-array v0, p1, [Z

    .line 1479
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getA11yButtonState([Z)I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 1483
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 1485
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method private updateBarMode(I)Z
    .locals 2

    .line 1115
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideRecentsOnboarding()V

    .line 1120
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 1121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 1122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private updateNavigationBarTouchableState()V
    .locals 5

    .line 1917
    const-class v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarController;->getNavView()Landroid/view/View;

    move-result-object v0

    const-string v1, "NavigationBar"

    if-eqz v0, :cond_1

    .line 1919
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1920
    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " Set navigation bar not touchable for gesture mode."

    .line 1921
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1924
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mImeShow:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, " Enable navigation bar touch when IME showing."

    .line 1925
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x40

    .line 1927
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1929
    :cond_0
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    .line 1930
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1934
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_2

    .line 1935
    invoke-interface {p0, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1938
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " Set navigation bar touchable when for 3-button mode"

    .line 1939
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1942
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x40

    .line 1943
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1945
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_2

    .line 1946
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateScreenPinningGestures()V
    .locals 2

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    .line 1206
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    .line 1207
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 1209
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 1211
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abortTransient(I[I)V
    .locals 1

    .line 1084
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1087
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1090
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->clearTransient()V

    return-void
.end method

.method public checkNavBarModes()V
    .locals 6

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1604
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 1607
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_3

    .line 1609
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq v4, v1, :cond_2

    if-ne v4, v2, :cond_1

    goto :goto_1

    .line 1612
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarColor:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    goto :goto_2

    .line 1610
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public disable(IIIZ)V
    .locals 0

    .line 1145
    iget p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x3600000

    and-int/2addr p1, p2

    .line 1153
    iget p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    if-eq p1, p4, :cond_2

    .line 1154
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 1155
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_1

    .line 1156
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 1158
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 1162
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_3

    and-int/lit8 p1, p3, 0x10

    .line 1164
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    if-eq p1, p2, :cond_3

    .line 1165
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 1166
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    :cond_3
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .locals 4

    .line 1682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 1683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$j_WZTHSZ47fEKh7hZbvsbut1wMg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$j_WZTHSZ47fEKh7hZbvsbut1wMg;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    const-wide/16 v2, 0x1c0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 885
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_0

    const-string p1, "  mNavigationBarWindowState="

    .line 886
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mNavigationBarMode="

    .line 888
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p1

    const-string v0, "mNavigationBarView"

    invoke-static {p3, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 893
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mStartingQuickSwitchRotation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mCurrentRotation="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCurrentRotation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNavigationBarView="

    .line 895
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez p0, :cond_1

    const-string p0, "null"

    .line 897
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public finishBarAnimations()V
    .locals 0

    .line 1707
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    return-void
.end method

.method public getA11yButtonState([Z)I
    .locals 7

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    .line 1520
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1522
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    .line 1523
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object p0

    .line 1525
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 1526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    :goto_0
    const/16 v5, 0x10

    if-ltz v2, :cond_1

    .line 1527
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1528
    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v6, :cond_0

    if-eq v6, v5, :cond_0

    move v4, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1535
    aput-boolean v4, p1, v1

    :cond_2
    if-lt p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    const/4 p1, 0x2

    if-lt p0, p1, :cond_4

    const/16 v1, 0x20

    :cond_4
    or-int p0, v5, v1

    return p0
.end method

.method public getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    .line 1689
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    return-object p0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .locals 0

    .line 1703
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method getNavigationIconHints()I
    .locals 0

    .line 1866
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    return p0
.end method

.method public isNavBarWindowVisible()Z
    .locals 4

    .line 1593
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/oneplus/util/OpUtils;->setNavigationBarShowing(IZ)V

    .line 1595
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public synthetic lambda$disableAnimationsDuringHide$5$NavigationBarFragment()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$disableAnimationsDuringHide$5()V

    return-void
.end method

.method public synthetic lambda$initSecondaryHomeHandleForRotation$3$NavigationBarFragment()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$initSecondaryHomeHandleForRotation$3()V

    return-void
.end method

.method public synthetic lambda$new$0$NavigationBarFragment()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarFragment(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$new$1(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V

    return-void
.end method

.method public synthetic lambda$new$2$NavigationBarFragment()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$new$2()V

    return-void
.end method

.method public synthetic lambda$new$6$NavigationBarFragment(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$new$6(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic lambda$onNavigationModeChanged$4$NavigationBarFragment()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$onNavigationModeChanged$4()V

    return-void
.end method

.method public notifyNavBarColorChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1871
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportCustomNavBar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1873
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarColor:I

    .line 1876
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/oneplus/util/OpUtils;->updateTopPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1880
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyNavBarColorChange(I)V

    :cond_1
    return-void
.end method

.method public onBrickModeChanged(Z)V
    .locals 1

    .line 1896
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsInBrickMode:Z

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onBrickModeChanged(Z)V

    .line 1898
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideNavBar(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 746
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 749
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 755
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 756
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 757
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    if-eq v1, v2, :cond_2

    .line 763
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    .line 764
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    .line 765
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    .line 767
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    .line 770
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientation:I

    .line 771
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateNavigationBarTouchableState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 524
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 527
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 528
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assistant"

    .line 530
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 529
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 534
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    .line 535
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    const/4 v1, 0x1

    .line 536
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;->onChange(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "op_gesture_button_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "NavigationBar"

    if-eqz p1, :cond_0

    const-string v1, "disabled_state"

    .line 544
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string v1, "disabled2_state"

    .line 545
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    const-string v1, "appearance"

    .line 546
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    const-string/jumbo v1, "transient_state"

    .line 547
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    .line 549
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavBar vis get from savedInstance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Status bar vis "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAppearance()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAppearance()I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    .line 558
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getAppearance()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    .line 559
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get mAppearance from status bar "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 565
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    const-string/jumbo p1, "systemui"

    const-string v0, "nav_bar_handle_force_opaque"

    .line 567
    invoke-static {p1, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mForceNavBarHandleOpaque:Z

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    .line 577
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 576
    invoke-static {p1, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 583
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHideNavBar(Z)V

    .line 587
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientation:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 619
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p3, :cond_0

    const-string p1, "NavigationBar"

    const-string p2, " Return the navigation bar view if it\'s already created"

    .line 620
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object p0

    .line 624
    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->navigation_bar:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 593
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarSettingObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarSettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->destroy()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 694
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 696
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    .line 698
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)V

    const/4 v0, 0x0

    .line 699
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->destroy()V

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    if-eqz v0, :cond_3

    .line 711
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->resetSecondaryHandle()V

    .line 712
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandleIntensityListener:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandleGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1725
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->canShowSecondaryHandle()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1729
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1730
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 1731
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCurrentRotation:I

    if-eq p1, v0, :cond_1

    .line 1732
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCurrentRotation:I

    .line 1733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->orientSecondaryHomeHandle()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 1322
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->shouldDisableNavbarGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1325
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xef

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 1326
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarActionEvent;->NAVBAR_ASSIST_LONGPRESS:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$NavBarActionEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 1327
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x5

    const-string v1, "invocation_type"

    .line 1328
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 1331
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 1333
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_2

    .line 1334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->abortCurrentGesture()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onNavigationModeChanged(I)V
    .locals 4

    .line 1622
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "NavigationBar"

    if-eqz v0, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavigationModeChanged mode from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1628
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 1630
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {p1, v0}, Lcom/oneplus/util/OpUtils;->setNavigationBarShowing(IZ)V

    .line 1633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->canShowSecondaryHandle()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->resetSecondaryHandle()V

    .line 1640
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1642
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$XEk0w8DzgaQF2WOx5moeKvCIr5U;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$XEk0w8DzgaQF2WOx5moeKvCIr5U;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1650
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getNavigationBarHiddenMode()I

    move-result p1

    if-eq p1, v3, :cond_4

    sget-boolean p1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sSideGestureEnabled:Z

    if-nez p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1653
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_5

    move v2, v3

    .line 1654
    :cond_5
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    .line 1655
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNavigationModeChanged navBarHidden "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_6
    sget-object p1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    xor-int/lit8 v0, v2, 0x1

    const-string v1, "buttons_show_on_screen_navkeys"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1663
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCheckNavigationBarState:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1664
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCheckNavigationBarState:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1668
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateNavigationBarTouchableState()V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 985
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 986
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v1

    .line 987
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p0

    .line 989
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;

    if-eqz v1, :cond_0

    return-void

    .line 1004
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotationProposal(IIZ)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 729
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 730
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string v1, "disabled_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    const-string v1, "disabled2_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    const-string v1, "appearance"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    const-string/jumbo v1, "transient_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 735
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState save vis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V
    .locals 3

    .line 1027
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p3, :cond_0

    return-void

    .line 1031
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    .line 1032
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    .line 1033
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 1036
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(ZI)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateBarMode(I)Z

    move-result p1

    .line 1038
    invoke-static {}, Lcom/oneplus/util/OpNavBarUtils;->isSupportHideNavBar()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_3

    and-int/lit16 v2, p2, 0x1002

    if-eqz v2, :cond_2

    .line 1041
    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImmersiveSticky(Z)V

    goto :goto_0

    .line 1043
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onImmersiveSticky(Z)V

    :cond_3
    :goto_0
    move v0, p1

    .line 1050
    :cond_4
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_5

    .line 1051
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemBarAppearanceChanged: appearance="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NavigationBar"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {p1, p2, v0, v1, p4}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    .line 1060
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_6

    .line 1061
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRegionSamplingHelper()Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->setByPassThreshold(Z)V

    .line 1062
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCloseByPassThreshold:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1063
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCloseByPassThreshold:Ljava/lang/Runnable;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 629
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 630
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 635
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p2, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 645
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 648
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkHideNavBarState()V

    .line 651
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowVisible(Z)V

    .line 653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 656
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 657
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 658
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 660
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 659
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 661
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    .line 663
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 p2, -0x1

    .line 664
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    .line 667
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p2, :cond_3

    .line 668
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V

    .line 670
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 671
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p2

    .line 672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Ljava/util/function/Consumer;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->addRotationCallback(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_4

    .line 676
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotationLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 677
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    goto :goto_1

    .line 680
    :cond_3
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 682
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    .line 683
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_5

    .line 684
    new-instance p1, Lcom/android/systemui/assist/AssistHandleViewController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/assist/AssistHandleViewController;-><init>(Landroid/os/Handler;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    .line 686
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistHandlerViewController:Lcom/android/systemui/assist/AssistHandleViewController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)F

    .line 689
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->initSecondaryHomeHandleForRotation()V

    return-void
.end method

.method public restoreAppearanceAndTransientState()V
    .locals 4

    .line 1009
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(ZI)I

    move-result v0

    .line 1010
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 1011
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 1015
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreSystemUiVisibilityState: vis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAppearance:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .locals 0

    .line 1572
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p1, :cond_0

    .line 1574
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideUiElement:Lcom/android/systemui/statusbar/AutoHideUiElement;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setNavigationBar(Lcom/android/systemui/statusbar/AutoHideUiElement;)V

    :cond_0
    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 2

    .line 908
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 916
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mImeShow:Z

    .line 919
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imeShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showImeSwitcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-eqz p4, :cond_4

    if-eq p4, p3, :cond_4

    if-eq p4, p1, :cond_4

    const/4 p2, 0x3

    if-eq p4, p2, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :goto_1
    if-eqz p5, :cond_5

    or-int/2addr p1, v0

    goto :goto_2

    :cond_5
    and-int/lit8 p1, v0, -0x3

    .line 943
    :goto_2
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-ne p1, p2, :cond_6

    return-void

    .line 945
    :cond_6
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 947
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p2, :cond_7

    .line 948
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 950
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkBarModes()V

    .line 953
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateNavigationBarTouchableState()V

    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1567
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    return-void
.end method

.method public setWindowState(III)V
    .locals 1

    .line 960
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq p2, p3, :cond_3

    .line 963
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 p2, -0x1

    .line 964
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 965
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mShowOrientedHandleForImmersiveMode:Z

    .line 966
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOrientationHandle:Lcom/android/systemui/statusbar/phone/QuickswitchOrientedNavHandle;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStartingQuickSwitchRotation:I

    if-eq p1, p2, :cond_1

    .line 968
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->orientSecondaryHomeHandle()V

    .line 970
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Navigation bar "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavigationBar"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_2

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowVisible(Z)V

    .line 977
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBackupNavBarMode:I

    :cond_3
    return-void
.end method

.method public showTransient(I[I)V
    .locals 1

    .line 1070
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1073
    invoke-static {p2, p1}, Landroid/view/InsetsState;->containsType([II)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 1076
    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    if-nez p2, :cond_2

    .line 1077
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mTransientShown:Z

    .line 1078
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->handleTransientChanged()V

    :cond_2
    return-void
.end method

.method public touchAutoDim()V
    .locals 3

    .line 1557
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAutoDim(Z)V

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 0

    .line 1699
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public updateSystemUiStateFlags(I)V
    .locals 5

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getA11yButtonState([Z)I

    move-result p1

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/16 v3, 0x20

    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move v1, v2

    .line 1495
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    .line 1496
    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    const/4 v3, 0x2

    .line 1497
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {p1, v3, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    .line 1498
    invoke-virtual {p1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    const/16 p1, 0xb

    .line 1499
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->registerAction(ZI)V

    const/16 p1, 0xc

    .line 1500
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->registerAction(ZI)V

    return-void
.end method
