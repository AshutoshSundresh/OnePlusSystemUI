.class Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;
.super Ljava/lang/Thread;
.source "OpSketchPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpSketchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpreadPathGenerator"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/oneplus/aod/bg/OpSketchBitmapHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper;",
            ")V"
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mList:Ljava/util/ArrayList;

    .line 461
    iput-object p2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mBitmap:Landroid/graphics/Bitmap;

    .line 462
    iput-object p3, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SpreadPathGenerator"

    const-string v1, "start"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->genSpreadPath(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    .line 471
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 474
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 475
    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mBitmap:Landroid/graphics/Bitmap;

    .line 476
    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    .line 477
    iput-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;->mList:Ljava/util/ArrayList;

    const-string p0, "end"

    .line 478
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
