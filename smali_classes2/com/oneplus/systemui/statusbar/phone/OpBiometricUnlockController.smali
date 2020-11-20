.class public Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpBiometricUnlockController.java"


# static fields
.field private static final DEBUG:Z

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP:I

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I


# instance fields
.field private final IS_SUPPORT_CUSTOM_FINGERPRINT:Z

.field private mFaceLockMode:I

.field private mForceShowBouncer:Z

.field private mIsFingerprintAuthenticating:Z

.field protected mIsScreenOffUnlock:Z

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mNoBouncerAnim:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->DEBUG:Z

    const/4 v0, 0x3

    .line 85
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    const/4 v0, 0x1

    .line 87
    sput v0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 61
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 65
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 90
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    .line 101
    iput v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    .line 106
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 107
    iput-object p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 108
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 109
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 110
    iput-object p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method private animateCollapsePanels(F)V
    .locals 2

    .line 622
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(IZZF)V

    goto :goto_0

    :cond_0
    const-string p0, "OpBiometricUnlockController"

    const-string p1, "animateCollapsePanels: ShadeController is null"

    .line 626
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I
    .locals 6

    .line 559
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "calculateMode"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 560
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private cleanup()V
    .locals 3

    .line 578
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cleanup"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;
    .locals 2

    .line 573
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const-string v1, "mKeyguardViewController"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    return-object p0
.end method

.method private getMode()I
    .locals 2

    .line 608
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const-string v1, "mMode"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isLauncherOnTop()Z
    .locals 5

    const-string p0, "OpBiometricUnlockController"

    const/4 v0, 0x0

    .line 531
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLauncherOnTop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x2

    if-ne v1, p0, :cond_0

    return v2

    :catch_0
    move-exception v1

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isWakeAndUnlock()Z
    .locals 3

    .line 613
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isWakeAndUnlock"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private onFingerprintUnlockStart()V
    .locals 7

    .line 174
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v0

    .line 175
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewController;->isShowingLiveWallpaper(Z)Z

    move-result v1

    .line 176
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v3

    .line 177
    iget-object v4, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    .line 179
    sget-boolean v5, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFingerprintUnlockStart, screenOn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , dream:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , live:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpBiometricUnlockController"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v1, "com.android.systemui:UnlockStart"

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 190
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    .line 194
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 197
    invoke-virtual {p0, v3, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private releaseBiometricWakeLock()V
    .locals 3

    .line 588
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "releaseBiometricWakeLock"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetMode()V
    .locals 3

    .line 583
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "resetMode"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPendingShowBouncer(Z)V
    .locals 2

    .line 569
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "mPendingShowBouncer"

    invoke-static {v0, p0, v1, p1}, Lcom/oneplus/util/OpReflectionUtils;->setValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected changePanelVisibilityByAlpha(IZ)V
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePanelVisibilityByAlpha: alpha= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reset= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 447
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget p2, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->changePanelAlpha(II)V

    :goto_0
    return-void
.end method

.method public getFaceLockMode()I
    .locals 0

    .line 488
    iget p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    return p0
.end method

.method protected abstract getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;
.end method

.method public isFingerprintAuthenticating()Z
    .locals 0

    .line 439
    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    return p0
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 387
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_0

    .line 388
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFingerprintHelp: msgId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", helpString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpBiometricUnlockController"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 390
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 6

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAcquired: accquireInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->releaseBiometricWakeLock()V

    .line 313
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustomFingerprint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , acquireInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , isInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isHomeApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mUpdateMonitor.isUnlockingWithBiometricAllowed() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 319
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , OpLsState.getInstance().isFinishedScreenTuredOn() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mUpdateMonitor.isDeviceInteractive() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 321
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "don\'t deal with event if screen does not turne on"

    .line 326
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 334
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "not allow unlock with biometric"

    .line 335
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "com.android.systemui:onAcquired"

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void

    .line 342
    :cond_1
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    .line 344
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onFingerprintPoke()V

    :goto_0
    if-nez v0, :cond_3

    .line 351
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result p1

    if-nez p1, :cond_3

    .line 352
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 360
    invoke-virtual {p0, v2, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    goto :goto_1

    .line 362
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    .line 367
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockStart()V

    return-void

    .line 372
    :cond_6
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p0

    if-nez p0, :cond_7

    .line 380
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->acquireWakeLock()V

    :cond_7
    return-void
.end method

.method protected onFingerprintAuthFailed()V
    .locals 3

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFingerprintAuthFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->isFinishedScreenTuredOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    .line 397
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const-string v1, "finger"

    const-string v2, "lock_unlock_failed"

    if-eqz v0, :cond_0

    const-string v0, "1"

    .line 403
    invoke-static {v2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 405
    invoke-static {v2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    return-void
.end method

.method public onFingerprintTimeout()V
    .locals 1

    const/4 v0, 0x3

    .line 414
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->onFingerprintUnlockCancel(I)V

    .line 415
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->cleanup()V

    return-void
.end method

.method protected onFingerprintUnlockCancel(I)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 210
    sget v1, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    .line 211
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    sget v1, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    .line 222
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFingerprintUnlockCancel: Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", OffUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", attemps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 224
    invoke-virtual {v3}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Authenticating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", prevent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", skip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 227
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 228
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bouncer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", threshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", motor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpBiometricUnlockController"

    .line 222
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 234
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardViewController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    .line 241
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    if-nez p1, :cond_9

    .line 243
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 244
    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result p1

    if-lt p1, v1, :cond_9

    if-nez v0, :cond_7

    .line 246
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getPreventModeCtrl()Lcom/oneplus/plugin/OpPreventModeCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpPreventModeCtrl;->isPreventModeActive()Z

    move-result p1

    if-nez p1, :cond_7

    .line 249
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v0, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->IS_SUPPORT_MOTOR_CAMERA:Z

    const v1, 0x3f8ccccd    # 1.1f

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 251
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 253
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 254
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->animateCollapsePanels(F)V

    goto :goto_1

    .line 257
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_7

    .line 258
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 259
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 262
    :cond_4
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 263
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    .line 264
    invoke-direct {p0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_1

    .line 267
    :cond_5
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_6

    .line 268
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->animateCollapsePanels(F)V

    .line 272
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 278
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "com.android.systemui:FailedAttempts"

    invoke-virtual {p1, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 281
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-nez p1, :cond_8

    .line 282
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-eqz p1, :cond_a

    .line 283
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_2

    .line 287
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result p1

    if-nez p1, :cond_a

    .line 288
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_2

    .line 293
    :cond_9
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-eqz p1, :cond_a

    .line 294
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xb

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 296
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/OpFacelockController;->onPreStartedGoingToSleep()V

    .line 301
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->onFingerprintStartedGoingToSleep()V

    :cond_a
    :goto_2
    const/4 p1, 0x5

    .line 305
    invoke-virtual {p0, v3, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 423
    iget-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 424
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 427
    invoke-virtual {p0, p1, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->setWakingUpReason(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isFingerprintAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsScreenOffUnlock:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpBiometricUnlockController"

    const-string v1, "reset panel and fp state due to waking up during fingerprint authenticating"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->changePanelVisibilityByAlpha(IZ)V

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFingerprintState(ZI)V

    :cond_0
    return-void
.end method

.method protected opIsBiometricUnlock()Z
    .locals 2

    .line 551
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 552
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result p0

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

.method public opResetMode()V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->resetMode()V

    return-void
.end method

.method protected opShowBouncer()V
    .locals 3

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 116
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    if-eqz v1, :cond_0

    .line 117
    iput-boolean v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 122
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 125
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->calculateMode(Landroid/hardware/biometrics/BiometricSourceType;Z)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardViewController;->showBouncer(Z)V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 133
    iget-boolean v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    if-eqz v1, :cond_2

    const v1, 0x4479c000    # 999.0f

    goto :goto_0

    :cond_2
    const v1, 0x3f8ccccd    # 1.1f

    .line 132
    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->animateCollapsePanels(F)V

    .line 137
    :cond_3
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mNoBouncerAnim:Z

    .line 140
    invoke-direct {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    .line 142
    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mForceShowBouncer:Z

    return-void
.end method

.method public resetSpeedUpPolicy()V
    .locals 0

    return-void
.end method

.method public setFaceLockMode(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mFaceLockMode:I

    return-void
.end method

.method protected setFingerprintState(ZI)V
    .locals 2

    .line 433
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFingerprintState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBiometricUnlockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mIsFingerprintAuthenticating:Z

    .line 435
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v0, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    return-void
.end method

.method public shouldApplySpeedUpPolicy()Z
    .locals 2

    .line 455
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/keyguard/KeyguardViewController;->isShowingLiveWallpaper(Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startWakeAndUnlockForFace(I)V
    .locals 3

    .line 495
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setFaceLockMode(I)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWakeAndUnlockForFace:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBiometricUnlockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->getKeyguardViewController()Lcom/android/keyguard/KeyguardViewController;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardViewController;->notifyKeyguardAuthenticated(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 505
    invoke-direct {p0, v1}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->setPendingShowBouncer(Z)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->opShowBouncer()V

    goto :goto_0

    .line 516
    :cond_3
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->isLauncherOnTop()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/keyguard/OpKeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 520
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 521
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 523
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 526
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpBiometricUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyBiometricAuthModeChanged()V

    return-void
.end method
