.class Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;
.super Ljava/lang/Object;
.source "OpPanelViewController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

.field final synthetic val$endHeight:F

.field final synthetic val$startHeight:F


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;FF)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$endHeight:F

    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$startHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 371
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$endHeight:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->val$startHeight:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    sub-float v2, v1, v0

    .line 374
    iget-object v3, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 380
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelViewController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedHeightInternal(F)V

    :goto_0
    return-void
.end method
