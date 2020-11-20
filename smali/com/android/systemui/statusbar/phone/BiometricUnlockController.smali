.class public Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
.super Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;
.source "BiometricUnlockController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;,
        Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;
    }
.end annotation


# static fields
.field private static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mFadedAwayAfterWakeAndUnlock:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMode:I

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

.field private mPendingShowBouncer:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeUpDelay:I

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1, p3, p5}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;-><init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    const/4 p4, 0x0

    .line 174
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 298
    new-instance p4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    .line 742
    new-instance p4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 773
    new-instance p4, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 270
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    .line 271
    const-class p4, Landroid/os/PowerManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 272
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 273
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 274
    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 275
    invoke-virtual {p10, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 276
    const-class p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 277
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {p1, p4}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 278
    const-class p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {p1, p4}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 280
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 281
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 282
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 284
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 285
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 286
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    const p1, 0x10e00d3

    .line 287
    invoke-virtual {p11, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    .line 288
    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 289
    invoke-virtual {p12, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    .line 290
    iput-object p14, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 291
    const-class p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p15, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I
    .locals 1

    .line 578
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->IRIS:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForFingerprint(Z)I

    move-result p0

    return p0

    .line 580
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateModeForPassiveAuth(Z)I

    move-result p0

    return p0
.end method

.method private calculateModeForFingerprint(Z)I
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 588
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_4

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p1, :cond_3

    .line 596
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->bouncerIsOrWillBeShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const/16 p0, 0x8

    return p0

    :cond_6
    if-eqz p1, :cond_7

    const/4 p0, 0x5

    return p0

    .line 610
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private calculateModeForPassiveAuth(Z)I
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 619
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    .line 623
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-nez v2, :cond_7

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    :cond_1
    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    return v3

    .line 628
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result p0

    const/4 p1, 0x2

    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    move v4, p1

    :cond_4
    return v4

    :cond_5
    if-eqz v1, :cond_6

    return p1

    :cond_6
    return v4

    :cond_7
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    const/4 v4, 0x6

    :cond_8
    return v4

    .line 645
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->bouncerIsOrWillBeShowing()Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-eqz v1, :cond_a

    .line 647
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canPlaySubtleWindowAnimations()Z

    move-result p0

    if-eqz p0, :cond_a

    return v2

    :cond_a
    const/16 p0, 0x8

    return p0

    :cond_b
    if-eqz p1, :cond_d

    if-eqz v1, :cond_c

    move v5, v2

    :cond_c
    return v5

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_1

    :cond_e
    move v3, v5

    :goto_1
    return v3

    :cond_f
    return v5
.end method

.method private cleanup()V
    .locals 1

    .line 693
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$1(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 2

    .line 557
    iget v0, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->biometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method

.method private synthetic lambda$startWakeAndUnlock$0(ZZ)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "BiometricUnlockCtrl"

    const-string v0, "bio wakelock: Authenticated, waking up..."

    .line 432
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "android.policy:BIOMETRIC"

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 438
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    :cond_1
    const-string p1, "release wake-and-unlock"

    .line 440
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    const/4 p1, 0x0

    .line 444
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    .line 447
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private releaseBiometricWakeLock()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "BiometricUnlockCtrl"

    const-string v1, "releasing biometric wakelock"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resetMode()V
    .locals 2

    const-string v0, "BiometricUnlockCtrl"

    const-string v1, "resetMode"

    .line 722
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 725
    iput v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 726
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceDozeBrightness(Z)V

    .line 727
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    .line 735
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFaceLockMode(I)V

    const/4 v0, 0x1

    .line 737
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    return-void
.end method

.method private showBouncer()V
    .locals 0

    .line 531
    invoke-super {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->opShowBouncer()V

    return-void
.end method

.method private toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I
    .locals 1

    .line 834
    sget-object p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$5;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    return p1

    :cond_0
    return v0

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "wake-and-unlock:wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 323
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "BiometricUnlockCtrl"

    const-string v0, "fingerprint acquired, grabbing biometric wakelock"

    .line 327
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, " BiometricUnlockController:"

    .line 787
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   mMode="

    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "   mWakeLock="

    .line 789
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 715
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    return-void
.end method

.method public getMode()I
    .locals 0

    .line 573
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    return p0
.end method

.method protected getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method public hasPendingAuthentication()Z
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->isStrongBiometric:Z

    .line 568
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;->userId:I

    .line 569
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBiometricUnlock()Z
    .locals 0

    .line 816
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->opIsBiometricUnlock()Z

    move-result p0

    return p0
.end method

.method public isWakeAndUnlock()Z
    .locals 2

    .line 796
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$onFinishedGoingToSleep$1$BiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$onFinishedGoingToSleep$1(Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    return-void
.end method

.method public synthetic lambda$startWakeAndUnlock$0$BiometricUnlockController(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->lambda$startWakeAndUnlock$0(ZZ)V

    return-void
.end method

.method public onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    const-string v0, "BiometricUnlockController#onBiometricAcquired"

    .line 334
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->releaseBiometricWakeLock()V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 339
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x6

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string/jumbo v1, "wake-and-unlock:wakelock"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "acquiring wake-and-unlock"

    .line 346
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 348
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string p1, "BiometricUnlockCtrl"

    const-string v0, "biometric acquired, grabbing biometric wakelock"

    .line 350
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mReleaseBiometricWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xb

    .line 664
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 663
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 665
    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->FAILURE_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 666
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 668
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintAuthFailed()V

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 2

    const-string v0, "BiometricUnlockController#onBiometricAuthenticated"

    .line 367
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;-><init>(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 378
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 381
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a1

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v1, 0xa

    .line 382
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 381
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 383
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->SUCCESS_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 384
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 386
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 390
    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->setRecentUnlockBiometricFinger(Z)V

    .line 392
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 393
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_1

    :cond_2
    const-string p0, "BiometricUnlockCtrl"

    const-string p1, "onBiometricAuthenticated aborted by bypass controller"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x6a1

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 v2, 0xf

    .line 679
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->toSubtype(Landroid/hardware/biometrics/BiometricSourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 680
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v2, 0x6cd

    invoke-virtual {v1, v2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 678
    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 681
    sget-object p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;->ERROR_EVENT_BY_SOURCE_TYPE:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$BiometricUiEvent;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 682
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;

    invoke-direct {v0, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DYeRSGfkACOmMKintAq15p0aYRA;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFingerprintError: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricUnlockCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 686
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2

    const-string p1, "BiometricUnlockController#onFinishedGoingToSleep"

    .line 553
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    if-eqz p1, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$WXzEzz1fr3GrmjWXzyYSNPAnvmA;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 560
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    .line 562
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->resetMode()V

    const/4 p1, 0x0

    .line 547
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    const/4 p1, 0x0

    .line 548
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingAuthenticated:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    return-void
.end method

.method public setKeyguardViewController(Lcom/android/keyguard/KeyguardViewController;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWakeAndUnlock(I)V
    .locals 6

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startWakeAndUnlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricUnlockCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 407
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    .line 422
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardViewController;->isShowingLiveWallpaper(Z)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has wallpaper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    if-eqz v2, :cond_0

    .line 428
    iget p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    if-lez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    .line 429
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$BiometricUnlockController$eARUOiIHQidy4dPvrf3UVu6gsv0;-><init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;ZZ)V

    if-nez p1, :cond_1

    .line 450
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eqz v5, :cond_1

    .line 451
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 453
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    const-string p1, "MODE_DISMISS_BOUNCER or MODE_UNLOCK_FADING"

    .line 456
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p1, v4}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    .line 459
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    :pswitch_2
    if-eqz v0, :cond_2

    .line 465
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "MODE_UNLOCK"

    .line 466
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "MODE_UNLOCK, and keyguard is occluded. Direct unlock without animation."

    .line 467
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 469
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :cond_2
    :pswitch_3
    const-string p1, "MODE_UNLOCK_COLLAPSING or MODE_SHOW_BOUNCER"

    .line 475
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 477
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mPendingShowBouncer:Z

    goto :goto_1

    .line 479
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->showBouncer()V

    .line 481
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :pswitch_4
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    const-string v0, "MODE_WAKE_AND_UNLOCK_PULSING"

    .line 487
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-ne v5, v3, :cond_5

    const-string v0, "MODE_WAKE_AND_UNLOCK"

    .line 494
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    .line 496
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    .line 501
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotificationShadeFocusable(Z)V

    if-eqz p1, :cond_6

    .line 507
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mWakeUpDelay:I

    int-to-long v0, v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 510
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 515
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 516
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 518
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 524
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    .line 525
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public unlockedByWakeAndUnlock()Z
    .locals 1

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

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
