.class Lcom/oneplus/battery/OpSWarpChargingView$4;
.super Ljava/lang/Object;
.source "OpSWarpChargingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpSWarpChargingView;->getChargeAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpSWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpSWarpChargingView;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object v1, v1, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 468
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$400(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$500(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 469
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$602(Lcom/oneplus/battery/OpSWarpChargingView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 470
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/oneplus/battery/OpSWarpChargingView$4$1;

    invoke-direct {v0, p0}, Lcom/oneplus/battery/OpSWarpChargingView$4$1;-><init>(Lcom/oneplus/battery/OpSWarpChargingView$4;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 493
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->op_swarp_animation_logo:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$700(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->op_warp_animation_logo:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 499
    :goto_0
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$800(Lcom/oneplus/battery/OpSWarpChargingView;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 502
    :cond_1
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1200(Lcom/oneplus/battery/OpSWarpChargingView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v2}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSwarpAnimation : startLevel["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$900(Lcom/oneplus/battery/OpSWarpChargingView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "], endLevel["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1400(Lcom/oneplus/battery/OpSWarpChargingView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSWarpChargingView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1500(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1300(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 500
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1100(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$1000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 507
    :goto_2
    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$4;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {p0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$600(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method
