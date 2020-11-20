.class public Lcom/oneplus/aod/OpClockViewCtrl;
.super Ljava/lang/Object;
.source "OpClockViewCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;
    }
.end annotation


# instance fields
.field private mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

.field private final mBuildInClockStyleMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClockContainer:Landroid/widget/FrameLayout;

.field private mClockController:Lcom/oneplus/aod/controller/IOpClockController;

.field private mClockStyle:I

.field private mClockView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mControllerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/aod/controller/IOpClockController;",
            ">;"
        }
    .end annotation
.end field

.field private mDreaming:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemInfoContainer:Landroid/view/ViewGroup;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mListeners:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mControllerList:Ljava/util/HashMap;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mBuildInClockStyleMapping:Landroid/util/SparseArray;

    .line 77
    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    .line 79
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 80
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->initBuildInMapping()V

    .line 83
    new-instance v0, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    .line 84
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpClockViewCtrl;->addOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V

    .line 87
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->initControllers()V

    .line 88
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/OpClockViewCtrl;->initViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpClockViewCtrl;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private chooseController()Lcom/oneplus/aod/controller/IOpClockController;
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mBuildInClockStyleMapping:Landroid/util/SparseArray;

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const-string v2, "ClockViewCtrl"

    if-nez v0, :cond_0

    const-string p0, "chooseController: no matching from mapping"

    .line 215
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oneplus/aod/utils/OpAodXmlParser;->getControllerName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "chooseController: no matching from xml"

    .line 221
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 225
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mControllerList:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p0, :cond_2

    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/oneplus/aod/controller/IOpClockController;->updateSettings(I)V

    goto :goto_0

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chooseController: unsupport controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private dispatchClockChanged()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;

    .line 254
    iget-object v2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {v1, v2}, Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;->onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initBuildInMapping()V
    .locals 8

    .line 264
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->op_aod_clock_style_mapping:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 267
    iget-object v2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mBuildInClockStyleMapping:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v2, 0x1

    const-string v4, "build in mapping ("

    const-string v5, "ClockViewCtrl"

    if-ge v3, v1, :cond_1

    const/4 v6, -0x1

    .line 270
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 271
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eq v7, v6, :cond_0

    if-eq v3, v6, :cond_0

    .line 273
    iget-object v4, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mBuildInClockStyleMapping:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 275
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") key or value is NO_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") has no xml resource"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initControllers()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mControllerList:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/aod/controller/OpBuildInClockController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/aod/controller/OpBuildInClockController;

    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/controller/OpBuildInClockController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private refreshTime()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p0, :cond_0

    .line 202
    invoke-interface {p0}, Lcom/oneplus/aod/controller/IOpClockController;->onTimeTick()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {p1, p0}, Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;->onClockChanged(Lcom/oneplus/aod/controller/IOpClockController;)V

    :cond_1
    return-void
.end method

.method public getController()Lcom/oneplus/aod/controller/IOpClockController;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    return-object p0
.end method

.method public initViews(Landroid/view/ViewGroup;)V
    .locals 2

    .line 93
    sget v0, Lcom/android/systemui/R$id;->op_aod_clock_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockContainer:Landroid/widget/FrameLayout;

    .line 95
    sget v0, Lcom/android/systemui/R$id;->op_aod_system_info_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mSystemInfoContainer:Landroid/view/ViewGroup;

    .line 96
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    iget-object v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->registerViews(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB(Z)V

    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDreaming:Z

    return-void
.end method

.method public onFodIndicationVisibilityChanged(Z)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p0, :cond_0

    .line 315
    invoke-interface {p0, p1}, Lcom/oneplus/aod/controller/IOpClockController;->onFodIndicationVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFodShowOrHideOnAod(Z)V
    .locals 0

    .line 307
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p0, :cond_0

    .line 308
    invoke-interface {p0, p1}, Lcom/oneplus/aod/controller/IOpClockController;->onFodShowOrHideOnAod(Z)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDreaming:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->onScreenTurnedOff()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->recover()V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mDreaming:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->refreshTime()V

    .line 176
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/oneplus/aod/controller/IOpClockController;->onScreenTurnedOn()V

    :cond_0
    const-string v0, "screen turned on"

    .line 180
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpClockViewCtrl;->userActivityInAlwaysOn(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->refreshTime()V

    .line 158
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->onTimeChanged()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    const/4 p1, 0x1

    .line 164
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB(Z)V

    return-void
.end method

.method public onUserTrigger(I)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p0, :cond_0

    .line 302
    invoke-interface {p0, p1}, Lcom/oneplus/aod/controller/IOpClockController;->onUserTrigger(I)V

    :cond_0
    return-void
.end method

.method public removeOnChangeListener(Lcom/oneplus/aod/OpClockViewCtrl$OpClockOnChangeListener;)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDozing()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->refreshTime()V

    return-void
.end method

.method public updateClockDB(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 113
    iget p2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    if-ne p2, p1, :cond_0

    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    .line 118
    iget-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 121
    iget-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 122
    iget-object p2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Landroid/view/View;

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    invoke-interface {p1}, Lcom/oneplus/aod/controller/IOpClockController;->onDestroyView()V

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->chooseController()Lcom/oneplus/aod/controller/IOpClockController;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockController:Lcom/oneplus/aod/controller/IOpClockController;

    if-eqz p1, :cond_3

    .line 132
    invoke-interface {p1}, Lcom/oneplus/aod/controller/IOpClockController;->getClockView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 135
    iget-object p2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 137
    iget-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/aod/OpClockViewCtrl;->dispatchClockChanged()V

    .line 143
    iget-object p1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    iget v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-static {p1, p2, v0}, Lcom/oneplus/aod/OpDateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateClock: style = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mClockStyle:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", user = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClockViewCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateClockDB(Z)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mUserId:I

    const-string v2, "aod_clock_style"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 105
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Set clock style failed. Invalid clock style: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ClockViewCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/aod/OpClockViewCtrl;->updateClockDB(IZ)V

    return-void
.end method

.method public userActivityInAlwaysOn(Ljava/lang/String;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpClockViewCtrl;->mAodBurnInProtectionHelper:Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;

    new-instance v1, Lcom/oneplus/aod/OpClockViewCtrl$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/OpClockViewCtrl$1;-><init>(Lcom/oneplus/aod/OpClockViewCtrl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/utils/OpAodBurnInProtectionHelper;->moveBackToOriginalPosition(Ljava/lang/Runnable;)V

    return-void
.end method
