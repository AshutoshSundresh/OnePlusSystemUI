.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
    }
.end annotation


# instance fields
.field private mDebounce:Z

.field private mDownX:I

.field private mDownY:I

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field private mHandler:Landroid/os/Handler;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mIsVoiceCapable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressWasDragged:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mDebounce:Z

    .line 75
    new-instance p2, Lcom/android/keyguard/EmergencyButton$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButton;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance p2, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    .line 130
    iget-object p2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110083

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 132
    new-instance p2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {p2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 135
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/widget/Button;->getPaintFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setPaintFlags(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/EmergencyButton;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mDebounce:Z

    return p1
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 381
    iget-object p0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 142
    iget-object p0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isInCall()Z
    .locals 1

    .line 372
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "EmergencyButton"

    const-string v0, " isInCall: getTelecommManager is null"

    .line 373
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 3

    .line 175
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    return-void

    .line 180
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->isShowEmergencyPanel()Z

    move-result p1

    .line 181
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    .line 182
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowEmergencyPanel: isShowEmergencyPanel= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isInCall= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmergencyButton"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 189
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {p0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onLaunchEmergencyPanel()V

    goto :goto_0

    .line 191
    :cond_2
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 193
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz p1, :cond_3

    .line 195
    invoke-interface {p1}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    .line 198
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)Z
    .locals 0

    .line 204
    iget-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {p0}, Lcom/android/internal/util/EmergencyAffordanceManager;->performEmergencyCall()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private resumeCall()V
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "EmergencyButton"

    const-string v0, " resumeCall: getTelecommManager is null"

    .line 360
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishInflate$0$EmergencyButton(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$EmergencyButton(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton;->lambda$onFinishInflate$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 148
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mDebounce:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 241
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 157
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 158
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mDebounce:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 167
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 168
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 169
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 174
    new-instance v0, Lcom/android/keyguard/-$$Lambda$EmergencyButton$KTHEYrkUJc7xBxT3_mk1U-fqYZ8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$EmergencyButton$KTHEYrkUJc7xBxT3_mk1U-fqYZ8;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/android/keyguard/-$$Lambda$EmergencyButton$lDso_ObwUd3nlVNy8pLMJXmgJO0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$EmergencyButton$lDso_ObwUd3nlVNy8pLMJXmgJO0;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    :cond_0
    new-instance v0, Lcom/android/keyguard/-$$Lambda$7IHJ89G67Qw9GERRIAzsEiEp-U8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$$Lambda$7IHJ89G67Qw9GERRIAzsEiEp-U8;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    .line 220
    iput v0, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    .line 221
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    goto :goto_0

    .line 224
    :cond_0
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 225
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 226
    iget-object v2, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 227
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    .line 231
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performLongClick()Z
    .locals 0

    .line 236
    invoke-super {p0}, Landroid/widget/Button;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 5

    .line 250
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mDebounce:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mDebounce:Z

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 259
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v2, "EmergencyButton"

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "takeEmergencyCallAction, isInCall():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stack:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    iget-object v1, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 265
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_2

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 269
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to stop app pinning"

    .line 271
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    .line 275
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz p0, :cond_6

    .line 276
    invoke-interface {p0}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    goto :goto_2

    .line 279
    :cond_3
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v1, :cond_4

    .line 281
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    goto :goto_1

    :cond_4
    const-string v1, "KeyguardUpdateMonitor was null, launching intent anyway."

    .line 283
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p0, "TelecomManager was null, cannot launch emergency dialer"

    .line 287
    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v2, 0x0

    .line 291
    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14800000

    .line 292
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    .line 295
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    new-instance v2, Landroid/os/UserHandle;

    .line 300
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 298
    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public updateEmergencyCallButton()V
    .locals 5

    .line 306
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 311
    :cond_0
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 312
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->config_showEmergencyButton:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 322
    :goto_1
    iget-object v3, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$bool;->kg_hide_emgcy_btn_when_oos:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 323
    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_5

    .line 324
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOOS()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    .line 330
    :goto_2
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_6

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEmergencyCallButton, visible:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isInCall():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", stack:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EmergencyButton"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v1, :cond_8

    .line 336
    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x1040465

    goto :goto_3

    :cond_7
    const v0, 0x104044a

    .line 344
    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    :cond_8
    const/16 v0, 0x8

    .line 346
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    return-void
.end method
