.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;
    }
.end annotation


# static fields
.field static final OP_DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field private mBlackList:Ljava/lang/String;

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockLTE:[Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private mCTA:Z

.field private final mContext:Landroid/content/Context;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mForceBlockWifi:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsAirplaneMode:Z

.field private mLTEIconStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mProvisionState:[I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mShowNoSim:Z

.field private final mSlotAirplane:Ljava/lang/String;

.field private final mSlotEthernet:Ljava/lang/String;

.field private final mSlotMobile:Ljava/lang/String;

.field private final mSlotVpn:Ljava/lang/String;

.field private final mSlotWifi:Ljava/lang/String;

.field private mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Z

    .line 94
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    const/4 v2, 0x0

    .line 101
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 844
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1040794

    .line 108
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10407a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10407b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104079e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x10407b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->config_showActivity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    .line 116
    invoke-static {p1}, Lcom/oneplus/util/OpUtils;->hasCtaFeature(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    .line 117
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->initProvistionState()V

    .line 125
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 126
    const-class p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 127
    const-class p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 129
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string p2, "icon_blacklist"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method private currentVpnIconId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 169
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_vpn_ic:I

    :goto_0
    return p0
.end method

.method private dumpMobileStates()V
    .locals 3

    const/4 v0, 0x0

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setSubs log:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBarSignalPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5

    const-string v0, " Exception: "

    const-string v1, "Failed to get pref, slotId: "

    const-string v2, "StatusBarSignalPolicy"

    .line 914
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v3, :cond_0

    const-string v3, "extphone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    const/4 v3, 0x0

    .line 918
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v4, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 925
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 926
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v4

    .line 921
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 922
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSlotProvisionStatus slotId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", status = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    .line 356
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 357
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 361
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected subscription "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarSignalPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getStateByPhoneId(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    .line 874
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 875
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 879
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected slotId "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarSignalPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 456
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 457
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 463
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 469
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    .line 473
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCorrectSubs SubId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " change from:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarSignalPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private initLTEIcon()V
    .locals 6

    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v1, "volte"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v2, "vowifi"

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 892
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;-><init>(Ljava/lang/String;)V

    .line 893
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_volte:I

    iput v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    const/4 v3, 0x0

    .line 894
    iput v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    .line 895
    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;-><init>(Ljava/lang/String;)V

    .line 896
    sget v5, Lcom/android/systemui/R$drawable;->stat_sys_vowifi:I

    iput v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    const/4 v5, 0x2

    .line 897
    iput v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    .line 899
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_vowifi:I

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_volte:I

    invoke-interface {v0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 907
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private initProvistionState()V
    .locals 4

    const-string v0, "StatusBarSignalPolicy"

    const-string v1, "init provision"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isReallyHasOneSim()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 144
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getSlotProvisionStatus(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isDataDisable(I)Z
    .locals 2

    .line 865
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v0, p0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 868
    :cond_0
    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public static synthetic lambda$UsBELiDs0GJjQ8hYeagcWJmxhFc(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateVpn()V

    return-void
.end method

.method private updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 1

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 259
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    return-void
.end method

.method private updateVpn()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->currentVpnIconId(Z)I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->accessibility_vpn_on:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    invoke-interface {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2

    .line 266
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 268
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "icon_blacklist"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 188
    :cond_0
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz p1, :cond_1

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTuningChanged / newValue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / mBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatusBarSignalPolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 198
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "volte"

    .line 203
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "vowifi"

    .line 204
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 206
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p2, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-ne v0, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-ne v2, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aget-boolean v7, v4, v6

    if-ne v3, v7, :cond_2

    aget-boolean v4, v4, v5

    if-eq p1, v4, :cond_5

    .line 212
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    .line 213
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-nez v1, :cond_4

    .line 215
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mForceBlockWifi:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move p2, v6

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    .line 218
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aput-boolean v3, p2, v6

    .line 219
    aput-boolean p1, p2, v5

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 224
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_5
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 3

    .line 490
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    .line 491
    :cond_0
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 492
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    if-lez v0, :cond_1

    .line 495
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 496
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 5

    .line 504
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    .line 505
    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    .line 506
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v0, v4, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 510
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 512
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 516
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    .line 517
    iget v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-gez v3, :cond_2

    .line 519
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    goto :goto_2

    .line 524
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 9

    .line 751
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    const-string v1, "StatusBarSignalPolicy"

    if-eqz v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLTEStatus / mBlackList:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlackList:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 756
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    const-string/jumbo v3, "volte"

    .line 757
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "vowifi"

    .line 758
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 759
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aput-boolean v3, v4, v2

    const/4 v3, 0x2

    .line 760
    aput-boolean v0, v4, v3

    :cond_1
    move v0, v2

    .line 763
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 764
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    .line 765
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    .line 766
    aget-object v5, p1, v4

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_2

    aget-object v5, p1, v4

    iget v5, v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    if-lez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    .line 768
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz v7, :cond_3

    if-nez v5, :cond_3

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setLTEStatus / status[imsIndex].visible:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v4

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " / mBlockLTE[imsIndex]:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " / status[imsIndex].icon:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v4

    iget v7, v7, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / imsIndex:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_3
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    if-eqz v5, :cond_4

    .line 777
    aget-object v5, p1, v4

    iget v5, v5, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    .line 778
    aget-object v4, p1, v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    .line 779
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v8, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    invoke-interface {v7, v8, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 780
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    invoke-interface {v4, v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 782
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    invoke-interface {v4, v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 786
    :cond_5
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz p1, :cond_6

    .line 787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setLTEStatus:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZIZZ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p14

    .line 317
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "StatusBarSignalPolicy"

    const-string v1, "setMobileDataIndicators / state == null"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_0
    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v4, :cond_2

    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    .line 326
    :goto_0
    iget-boolean v7, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    iput-boolean v7, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    .line 327
    iget v7, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v7, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    .line 328
    iput v2, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    .line 329
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 330
    iput-object v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/CharSequence;

    move/from16 v1, p15

    .line 331
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz p5, :cond_4

    .line 332
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    move v1, v6

    :goto_2
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-eqz p6, :cond_5

    .line 333
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    .line 335
    aget v1, p8, v6

    iput v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    .line 336
    aget v1, p9, v6

    iput v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    .line 337
    aget v1, p8, v5

    iput v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    .line 338
    aget v1, p9, v5

    iput v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    move/from16 v1, p16

    .line 340
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    .line 342
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v4, :cond_6

    .line 345
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v1

    .line 346
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 347
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 348
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 349
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    :cond_6
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    return-void
.end method

.method public setProvision(II)V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    .line 850
    :cond_0
    aput p2, v0, p1

    .line 851
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getStateByPhoneId(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 858
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->isDataDisable(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isAbsent()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvision slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " provision:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state.isAbsent():"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isAbsent()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " state.showNoSim:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusBarSignalPolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 381
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StatusBarSignalPolicy"

    const-string/jumbo v1, "setSubs s"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->initLTEIcon()V

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 398
    invoke-static {}, Lcom/oneplus/util/OpUtils;->getSimCount()I

    move-result v2

    .line 399
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v1, :cond_2

    .line 402
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    .line 403
    new-instance v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    .line 404
    iput v7, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    .line 405
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v7, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    move v2, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 408
    :cond_2
    new-array p1, v2, [Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move v5, v4

    .line 411
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 412
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    aput-object v8, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 415
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_3
    if-ltz v2, :cond_8

    if-eqz v1, :cond_5

    .line 418
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    if-eqz v5, :cond_4

    aget-object v5, p1, v2

    if-nez v5, :cond_4

    goto :goto_4

    .line 427
    :cond_4
    aget-object v5, p1, v2

    if-eqz v5, :cond_7

    .line 428
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    aget-object v7, p1, v2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 419
    :cond_5
    :goto_4
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    rsub-int/lit8 v7, v2, 0x0

    sub-int/2addr v7, v3

    invoke-direct {v5, v7, v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    .line 420
    iput v2, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    .line 421
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v7, :cond_6

    move v7, v3

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    iput-boolean v7, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    :cond_7
    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 437
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->dumpMobileStates()V

    const-string/jumbo p0, "setSubs e"

    .line 443
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 233
    iget-boolean p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 p3, 0x1

    const/4 p6, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-nez p1, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p6

    :goto_0
    if-eqz p4, :cond_1

    .line 234
    iget-boolean p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    move p4, p3

    goto :goto_1

    :cond_1
    move p4, p6

    :goto_1
    if-eqz p5, :cond_2

    .line 235
    iget-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz p5, :cond_2

    if-eqz p1, :cond_2

    move p5, p3

    goto :goto_2

    :cond_2
    move p5, p6

    .line 237
    :goto_2
    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {p7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p7

    .line 239
    iput-boolean p1, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    .line 240
    iget p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p1, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    .line 241
    iput-boolean p4, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    .line 242
    iput-boolean p5, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    iput-object p1, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;->slot:Ljava/lang/String;

    .line 244
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean p1, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    .line 245
    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 248
    iget p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez p2, :cond_4

    iget p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-nez p2, :cond_4

    iget p2, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p3, p6

    :cond_4
    :goto_3
    iput-boolean p3, p7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    .line 253
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    .line 254
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method
