.class Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->startWakingUpAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpStatusBar"

    const-string p1, "AodDisappearAnimation onAnimationCancel:"

    .line 1221
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "OpStatusBar"

    const-string v0, "AodDisappearAnimation onAnimationEnd:"

    .line 1227
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodWindowManager:Lcom/oneplus/aod/OpAodWindowManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodWindowManager;->stopDozing()V

    .line 1230
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->stopDozing()V

    .line 1231
    iget-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    iget-object p1, p1, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->mAodDisplayViewManager:Lcom/oneplus/aod/OpAodDisplayViewManager;

    invoke-virtual {p1}, Lcom/oneplus/aod/OpAodDisplayViewManager;->resetStatus()V

    .line 1234
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar$7;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->access$1900(Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;)Lcom/oneplus/util/OpBoostUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/util/OpBoostUtils;->releaseGPUBoost()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpStatusBar"

    const-string p1, "AodDisappearAnimation onAnimationStart:"

    .line 1216
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
