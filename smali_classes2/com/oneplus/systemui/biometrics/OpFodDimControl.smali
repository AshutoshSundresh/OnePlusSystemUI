.class public Lcom/oneplus/systemui/biometrics/OpFodDimControl;
.super Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;
.source "OpFodDimControl.java"


# instance fields
.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;-><init>(Lcom/oneplus/systemui/biometrics/OpFodDisplayController;)V

    .line 15
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/plugin/OpLsState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method


# virtual methods
.method public canEnable()Z
    .locals 4

    .line 23
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isEmptyClient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isForceShowClient()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t re-enable HBM due to fingerprint unlocking"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->isHighlight()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 43
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "force enable HBM since highlight icon is visible"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to going to sleep"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 56
    :cond_3
    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getBiometricUnlockController()Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_c

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    .line 62
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_5

    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodDimControl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 74
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "force enable HBM in aod and fp is pressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 86
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->isFaceUnlocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to already face unlocked"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 92
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_b

    .line 93
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 100
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getUpdateMonitor()Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v0

    if-nez v0, :cond_a

    .line 101
    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->getInstance()Lcom/oneplus/systemui/biometrics/OpFodHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFodHelper;->isKeyguardClient()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to boot device or biometrice doesn\'t allow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    return v2

    .line 95
    :cond_b
    :goto_0
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to lockout"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 58
    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 24
    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->mTAG:Ljava/lang/String;

    const-string v0, "don\'t enable HBM due to no one registering fp"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public disableInner(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getAodMode()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyDisplayDimMode(II)V

    return-void
.end method

.method public enableInner(Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getNotifier()Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayController$OpDisplayControl;->getAodMode()I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/systemui/biometrics/OpFodDisplayNotifier;->notifyDisplayDimMode(II)V

    return-void
.end method
