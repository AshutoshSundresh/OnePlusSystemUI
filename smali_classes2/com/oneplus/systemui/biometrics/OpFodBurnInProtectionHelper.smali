.class public Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;
.super Ljava/lang/Object;
.source "OpFodBurnInProtectionHelper.java"

# interfaces
.implements Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;


# instance fields
.field private mCheckRunnable:Ljava/lang/Runnable;

.field private mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$1;-><init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 175
    new-instance v0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper$2;-><init>(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mCheckRunnable:Ljava/lang/Runnable;

    .line 48
    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    .line 51
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isAodMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->needProtection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "OpFodBurnInProtectionHelper#protect"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private getDelayTime()I
    .locals 2

    const-string p0, "sys.fod.burnin.delay"

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDelayTime: override to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFodBurnInProtectionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/16 p0, 0xbb8

    return p0
.end method

.method private isAodMode()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 126
    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isScreenTurningOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needProtection()Z
    .locals 6

    .line 130
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result p0

    .line 135
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    .line 136
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isFingerprintStopped()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 138
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needProtection: isAlwaysOnEnabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isKeyguardClient= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", fodOnScreen= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OpFodBurnInProtectionHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateIconVisibility(Z)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAodDisplayViewManager()Lcom/oneplus/aod/OpAodDisplayViewManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/OpAodDisplayViewManager;->onFodShowOrHideOnAod(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isFodHiddenOnAod()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onFingerprintStateChanged()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "fingerprint state changed"

    .line 61
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->startSchedule(Ljava/lang/String;)V

    return-void
.end method

.method public setFodDialogView(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->addFingerprintStateChangeListener(Lcom/oneplus/systemui/biometrics/OpFodHelper$OnFingerprintStateChangeListener;)V

    .line 66
    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    .line 67
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public startSchedule(Ljava/lang/String;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->isAodMode()Z

    move-result v0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->needProtection()Z

    move-result v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSchedule: reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isAodMode= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", needProtection= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpFodBurnInProtectionHelper"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->releaseWakeLock()V

    .line 81
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 89
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mShouldHiddenFod:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->updateUI()V

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->acquireWakeLock()V

    .line 96
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpFodBurnInProtectionHelper;->getDelayTime()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "startSchedule: not needed"

    .line 83
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
