.class Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$1;
.super Ljava/lang/Object;
.source "OpCarModeHintView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;->getShowAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 197
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpCarModeHintView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
