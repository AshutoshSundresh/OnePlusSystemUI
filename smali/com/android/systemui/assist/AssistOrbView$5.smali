.class Lcom/android/systemui/assist/AssistOrbView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AssistOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbView;->animateOffset(FJJLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbView;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbView;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbView$5;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbView$5;->this$0:Lcom/android/systemui/assist/AssistOrbView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/assist/AssistOrbView;->access$802(Lcom/android/systemui/assist/AssistOrbView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
