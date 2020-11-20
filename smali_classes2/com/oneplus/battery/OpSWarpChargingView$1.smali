.class Lcom/oneplus/battery/OpSWarpChargingView$1;
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

    .line 411
    iput-object p1, p0, Lcom/oneplus/battery/OpSWarpChargingView$1;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/oneplus/battery/OpSWarpChargingView$1;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpSWarpChargingView;->access$000(Lcom/oneplus/battery/OpSWarpChargingView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView$1;->this$0:Lcom/oneplus/battery/OpSWarpChargingView;

    iget-object p0, p0, Lcom/oneplus/battery/OpSWarpChargingView;->mChargingAnimationAssets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
