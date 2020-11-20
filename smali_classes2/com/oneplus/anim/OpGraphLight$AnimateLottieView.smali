.class Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;
.super Lcom/airbnb/lottie/LottieAnimationView;
.source "OpGraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpGraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateLottieView"
.end annotation


# instance fields
.field private mLottieContext:Landroid/content/Context;

.field private mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private mOrientationType:I

.field private mPendingRelease:Z

.field final synthetic this$0:Lcom/oneplus/anim/OpGraphLight;


# direct methods
.method public constructor <init>(Lcom/oneplus/anim/OpGraphLight;Landroid/content/Context;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    .line 629
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mPendingRelease:Z

    .line 630
    iput-object p2, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieContext:Landroid/content/Context;

    .line 631
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 632
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->createLottieDrawable()Lcom/airbnb/lottie/LottieDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 633
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mOrientationType:I

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->release(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Lcom/airbnb/lottie/LottieDrawable;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;I)I
    .locals 0

    .line 619
    iput p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mOrientationType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)I
    .locals 0

    .line 619
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)Z
    .locals 0

    .line 619
    iget-boolean p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mPendingRelease:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)Z
    .locals 0

    .line 619
    iput-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mPendingRelease:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->loadAndPlay(Z)V

    return-void
.end method

.method private createLottieDrawable()Lcom/airbnb/lottie/LottieDrawable;
    .locals 2

    .line 691
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    .line 692
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    .line 695
    new-instance v1, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;

    invoke-direct {v1, p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$2;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getLottieFrontCamAnimFile()Ljava/lang/String;
    .locals 2

    .line 760
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->op_front_camera_animation_file_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 766
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_front_camera_animation_default_resource_resolution:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0x5a0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 768
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v0, "120_"

    goto :goto_1

    :cond_2
    const-string v0, "100_"

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    :goto_2
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$1500(Lcom/oneplus/anim/OpGraphLight;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "dark.json"

    .line 773
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string p0, "light.json"

    .line 775
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpGraphLight"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOrientation()I
    .locals 0

    .line 665
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$700(Lcom/oneplus/anim/OpGraphLight;)Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 669
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private loadAndPlay(Z)V
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->getLottieFrontCamAnimFile()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView$1;-><init>(Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;Z)V

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    return-void
.end method

.method private release(Z)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-nez v0, :cond_0

    return-void

    .line 734
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 735
    iput-boolean p1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mPendingRelease:Z

    return-void

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->destroyLottieDrawable()V

    .line 742
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0}, Lcom/oneplus/anim/OpGraphLight;->access$800(Lcom/oneplus/anim/OpGraphLight;)V

    return-void
.end method


# virtual methods
.method public checkOrientationType()Z
    .locals 4

    .line 673
    invoke-direct {p0}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->getOrientation()I

    move-result v0

    .line 674
    iget v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mOrientationType:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_1

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect checkOrientationType() / rotation:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mOrientationType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mOrientationType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mViewAdded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v3}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpGraphLight"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iput v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mOrientationType:I

    .line 678
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {v0}, Lcom/oneplus/anim/OpGraphLight;->access$1300(Lcom/oneplus/anim/OpGraphLight;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-direct {p0, v2}, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->release(Z)V

    .line 682
    iget-object p0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->this$0:Lcom/oneplus/anim/OpGraphLight;

    invoke-static {p0, v2}, Lcom/oneplus/anim/OpGraphLight;->access$500(Lcom/oneplus/anim/OpGraphLight;Z)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public destroyLottieDrawable()V
    .locals 2

    const-string v0, "OpGraphLight"

    const-string v1, "destroyLottieDrawable."

    .line 748
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iget-object v1, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 753
    iput-object v0, p0, Lcom/oneplus/anim/OpGraphLight$AnimateLottieView;->mLottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    :cond_0
    return-void
.end method
