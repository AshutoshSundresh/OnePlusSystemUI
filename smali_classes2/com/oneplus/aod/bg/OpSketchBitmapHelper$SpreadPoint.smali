.class public Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;
.super Landroid/graphics/Point;
.source "OpSketchBitmapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/bg/OpSketchBitmapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpreadPoint"
.end annotation


# instance fields
.field mSpreadDirection:Landroid/graphics/PointF;

.field private mSpreadPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 515
    invoke-direct {p0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 517
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadPath:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;)Ljava/util/ArrayList;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadPath:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getSpreadPath()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadPath:Ljava/util/ArrayList;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SpreadPoint]: x= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadDirection:Landroid/graphics/PointF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
