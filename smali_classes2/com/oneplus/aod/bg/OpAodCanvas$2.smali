.class Lcom/oneplus/aod/bg/OpAodCanvas$2;
.super Ljava/lang/Object;
.source "OpAodCanvas.java"

# interfaces
.implements Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpAodCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/bg/OpAodCanvas;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$2;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapHandleDone(ZLcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBitmapHandleDone: enabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", data= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpAodCanvas"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$2;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$100(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    .line 220
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas$2;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$200(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 223
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v3, "aod_clock_style"

    .line 220
    invoke-static {p1, v3, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 226
    :cond_2
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas$2;->this$0:Lcom/oneplus/aod/bg/OpAodCanvas;

    invoke-static {p0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$300(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Lcom/oneplus/aod/bg/IBgPaint;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/aod/bg/OpAodCanvas;->access$400(Lcom/oneplus/aod/bg/OpAodCanvas;Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    return-void
.end method
