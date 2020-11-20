.class public Lcom/oneplus/anim/OpGraphLight;
.super Ljava/lang/Object;
.source "OpGraphLight.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;,
        Lcom/oneplus/anim/OpGraphLight$AnimateImageView;,
        Lcom/oneplus/anim/OpGraphLight$FrontCameraAnimateBaseImageView;
    }
.end annotation


# static fields
.field private static final CIRCLE_FRONT_CAMERA_ANIM:Z


# instance fields
.field private m2kOr1080p:I

.field private mAnimateImageHeight:I

.field private mAnimateImageView:Landroid/widget/ImageView;

.field private mAnimateImageWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDarkMode:Z

.field private mFrontCameraPosistion:I

.field private mFrontCameraPosistionY:I

.field private final mHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mViewAdded:Z

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportHolePunchFrontCam()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fb

    .line 65
    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    const/16 v0, 0x46

    .line 66
    iput v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    .line 397
    new-instance v0, Lcom/oneplus/anim/OpGraphLight$2;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$2;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    .line 406
    new-instance v0, Lcom/oneplus/anim/OpGraphLight$3;

    invoke-direct {v0, p0}, Lcom/oneplus/anim/OpGraphLight$3;-><init>(Lcom/oneplus/anim/OpGraphLight;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    .line 91
    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    if-eqz p2, :cond_0

    .line 96
    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 101
    :cond_0
    new-instance p1, Lcom/oneplus/anim/OpGraphLight$1;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p2, p3}, Lcom/oneplus/anim/OpGraphLight$1;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 115
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/anim/OpGraphLight;)Landroid/widget/ImageView;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oneplus/anim/OpGraphLight;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/oneplus/anim/OpGraphLight;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/anim/OpGraphLight;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/anim/OpGraphLight;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/anim/OpGraphLight;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpGraphLight;->show(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/anim/OpGraphLight;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/anim/OpGraphLight;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight;->hide()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/anim/OpGraphLight;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    return p0
.end method

.method private hide()V
    .locals 3

    .line 370
    iget-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    const-string v1, "OpGraphLight"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "hide, mViewContainer.remove view"

    .line 372
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    instance-of v2, v0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v2, :cond_0

    .line 376
    check-cast v0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-virtual {v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->destroyLottieDrawable()V

    :cond_0
    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    .line 382
    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "hide, mWm.remove container view"

    .line 383
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 388
    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    .line 391
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    :cond_2
    return-void
.end method

.method private show(Z)V
    .locals 20

    move-object/from16 v0, p0

    .line 158
    iget-boolean v1, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-eqz v1, :cond_0

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/anim/OpGraphLight;->hide()V

    .line 163
    :cond_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isStatusBarIconsDark()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    .line 166
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 167
    sget-boolean v1, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v1, :cond_1

    .line 168
    new-instance v1, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;

    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateImageView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 171
    :cond_1
    new-instance v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->OpGraphLightTheme:I

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v0, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;-><init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    .line 175
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 180
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / screenWidth:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpGraphLight"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x438

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v3, :cond_3

    .line 183
    iput v7, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    goto :goto_1

    .line 185
    :cond_3
    iput v6, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    .line 189
    :goto_1
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 190
    sget v4, Lcom/android/systemui/R$dimen;->op_front_camera_animation_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 192
    iput v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    .line 193
    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    goto :goto_3

    .line 197
    :cond_4
    sget-boolean v3, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v3, :cond_5

    .line 198
    sget v3, Lcom/android/systemui/R$drawable;->op_front_camera_animation_graph:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_2

    .line 200
    :cond_5
    sget v3, Lcom/android/systemui/R$drawable;->op_front_camera_animation_circle_000:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 203
    :goto_2
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 206
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    .line 207
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    .line 208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v3, :cond_7

    .line 215
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    :cond_7
    :goto_3
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    .line 225
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion_y:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    .line 227
    sget-boolean v3, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    const-wide v8, 0x3fe7f559b3d07c85L    # 0.7487

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    if-nez v3, :cond_8

    .line 228
    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    if-ne v1, v7, :cond_9

    .line 229
    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    int-to-double v3, v1

    mul-double/2addr v3, v10

    double-to-int v1, v3

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    .line 230
    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    int-to-double v3, v1

    mul-double/2addr v3, v8

    double-to-int v1, v3

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    goto :goto_4

    .line 234
    :cond_8
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_default_resource_resolution:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0x5a0

    if-ne v3, v4, :cond_9

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->m2kOr1080p:I

    if-ne v3, v7, :cond_9

    .line 235
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    int-to-double v3, v3

    mul-double/2addr v3, v10

    double-to-int v3, v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    .line 236
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    .line 237
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion_second:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    .line 238
    sget v3, Lcom/android/systemui/R$dimen;->op_front_camera_animation_front_camera_posistion_y_second:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    .line 242
    :cond_9
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnimateImageWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mAnimateImageHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontCameraPosistion:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFrontCameraPosistionY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-boolean v1, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-eqz v1, :cond_a

    .line 246
    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    const-string v3, "debug.frontcameraposistion.offset.x"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    .line 247
    iget v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    const-string v3, "debug.frontcameraposistion.offset.y"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after debug modify, mFrontCameraPosition:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFrontCameraPositionY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_a
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    .line 256
    :cond_b
    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    if-nez v3, :cond_c

    .line 257
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/oneplus/anim/OpGraphLight;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    .line 259
    :cond_c
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in first show() / rotation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 262
    iget v4, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v8, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 263
    iget v8, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistion:I

    .line 265
    iget v9, v0, Lcom/oneplus/anim/OpGraphLight;->mFrontCameraPosistionY:I

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_f

    const/4 v12, 0x2

    if-eq v1, v12, :cond_e

    if-eq v1, v10, :cond_d

    goto/16 :goto_6

    .line 300
    :cond_d
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 301
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 302
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 303
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v3

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    goto :goto_5

    .line 286
    :cond_e
    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v12, v8

    sub-int v8, v12, v3

    .line 287
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v9

    sub-int/2addr v2, v4

    .line 288
    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 289
    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 290
    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 291
    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v3

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 292
    iget-object v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v4

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    move v15, v8

    move v8, v2

    goto :goto_7

    .line 279
    :cond_f
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v8

    sub-int v8, v2, v4

    .line 280
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 281
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 282
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 283
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    int-to-float v11, v4

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_5
    move v15, v9

    goto :goto_7

    .line 270
    :cond_10
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 271
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 272
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 273
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_6
    move v15, v8

    move v8, v9

    .line 308
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wmXpos:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / wmYpos:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mViewAdded:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    if-nez v2, :cond_13

    .line 313
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 314
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 315
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v17, 0x7e8

    const v18, 0x20800138

    const/16 v19, -0x3

    move-object v12, v2

    move/from16 v16, v8

    invoke-direct/range {v12 .. v19}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 327
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x50

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v3, -0x3

    .line 331
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v3, "GraphLight"

    .line 332
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    if-ne v1, v10, :cond_11

    const/16 v1, 0x35

    .line 335
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_8

    :cond_11
    const/16 v1, 0x33

    .line 337
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 341
    :goto_8
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 343
    invoke-virtual {v2, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 345
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mWm:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageWidth:I

    iget v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 349
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    iget-object v2, v0, Lcom/oneplus/anim/OpGraphLight;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iput-boolean v7, v0, Lcom/oneplus/anim/OpGraphLight;->mViewAdded:Z

    .line 355
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    instance-of v2, v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v2, :cond_12

    .line 357
    check-cast v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$200(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    .line 358
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 359
    iget-object v1, v0, Lcom/oneplus/anim/OpGraphLight;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 364
    :cond_12
    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public forceStop()V
    .locals 1

    .line 147
    sget-boolean v0, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    instance-of v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 151
    check-cast p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    :cond_1
    return-void
.end method

.method public isFrontCameraAnimOn()Z
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 786
    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOpCameraAnimateController()Lcom/oneplus/anim/OpCameraAnimateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->isFrontCameraAnimOn()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz p1, :cond_0

    .line 122
    check-cast p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->checkOrientationType()Z

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    iget-object v2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    instance-of v2, v2, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    if-eqz v2, :cond_2

    .line 423
    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDarkChanged, area:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", darkIntensity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", tint:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isDark:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isInArea:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    .line 425
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpGraphLight"

    .line 424
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    .line 427
    iget-object p2, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 428
    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->notifyStatusBarIconsDark(Z)V

    .line 429
    iget-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    if-eq p1, v0, :cond_2

    .line 431
    iput-boolean v0, p0, Lcom/oneplus/anim/OpGraphLight;->mDarkMode:Z

    .line 434
    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->isFrontCameraAnimOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 435
    iget-object p1, p0, Lcom/oneplus/anim/OpGraphLight;->mAnimateImageView:Landroid/widget/ImageView;

    check-cast p1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;

    invoke-static {p1, v1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    .line 436
    invoke-direct {p0, v1}, Lcom/oneplus/anim/OpGraphLight;->show(Z)V

    :cond_2
    return-void
.end method

.method public postShow()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 136
    sget-boolean v0, Lcom/oneplus/anim/OpGraphLight;->CIRCLE_FRONT_CAMERA_ANIM:Z

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
