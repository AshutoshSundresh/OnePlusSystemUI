.class public Lcom/oneplus/anim/OpCameraAnimateController;
.super Ljava/lang/Object;
.source "OpCameraAnimateController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGraphLight:Lcom/oneplus/anim/OpGraphLight;

.field private mIsCutoutHide:Z

.field private mIsLastFrontCameraAnimStateOn:Z

.field private mIsOneHandMode:Z

.field private mOneHandSettings:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    const-string v0, "one_hand_mode_status"

    .line 61
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mOneHandSettings:Landroid/net/Uri;

    .line 239
    new-instance v0, Lcom/oneplus/anim/OpCameraAnimateController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/anim/OpCameraAnimateController$2;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentObserver:Landroid/database/ContentObserver;

    .line 66
    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/anim/OpCameraAnimateController;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpCameraAnimateController;->isFrontCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/database/ContentObserver;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/ContentResolver;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/anim/OpCameraAnimateController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/anim/OpCameraAnimateController;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/anim/OpCameraAnimateController;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/anim/OpCameraAnimateController;)Landroid/net/Uri;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mOneHandSettings:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/anim/OpCameraAnimateController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->updateCameraAnim()V

    return-void
.end method

.method private isFrontCamera(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "OpCameraAnimateController"

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFrontCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateCameraAnim()V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "one_hand_mode_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    .line 215
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    if-eq v1, v3, :cond_5

    .line 216
    :cond_1
    iput-boolean v3, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    .line 217
    iput-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    .line 218
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraAnim isCutoutHide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isOneHandMode: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsOneHandMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsCutoutHide:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 224
    :cond_3
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    goto :goto_1

    .line 222
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->forceStop()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->config_should_show_front_camera_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init shouldShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpCameraAnimateController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/oneplus/anim/OpGraphLight;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v3, v4}, Lcom/oneplus/anim/OpGraphLight;-><init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    .line 81
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isSupportHolePunchFrontCam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 89
    new-instance v1, Lcom/oneplus/anim/OpCameraAnimateController$1;

    invoke-direct {v1, p0}, Lcom/oneplus/anim/OpCameraAnimateController$1;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public isFrontCameraAnimOn()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mIsLastFrontCameraAnimStateOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/oneplus/anim/OpGraphLight;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->updateCameraAnim()V

    return-void
.end method
