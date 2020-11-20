.class public Lcom/oneplus/aod/bg/OpSketchBitmapHelper;
.super Ljava/lang/Object;
.source "OpSketchBitmapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;,
        Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;
    }
.end annotation


# static fields
.field private static SPREAD_FILTER:[I = null

.field static SPREAD_LENGTH:[I = null

.field private static SPREAD_SKIP:[I = null

.field static SPREAD_STROKE_WIDTH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 35
    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    new-array v1, v0, [I

    .line 36
    fill-array-data v1, :array_1

    sput-object v1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_SKIP:[I

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_2

    sput-object v0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_FILTER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x46
        0x12c
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x1e
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    const-string v0, "sys.c.aod.width"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    const-string p1, "sys.c.aod.length"

    const-string v0, ""

    .line 47
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sys.c.aod.range"

    .line 48
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sys.c.aod.filter"

    .line 49
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    array-length v2, p1

    if-lez v2, :cond_0

    array-length v2, p1

    array-length v3, v1

    if-ne v2, v3, :cond_0

    array-length v2, p1

    array-length v3, v0

    if-ne v2, v3, :cond_0

    const-string v2, "OpSketchBitmapHelper"

    const-string v3, "override value"

    .line 57
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object p1

    sput-object p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    .line 60
    invoke-direct {p0, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object p1

    sput-object p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_SKIP:[I

    .line 61
    invoke-direct {p0, v0}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->convertToIntArray([Ljava/lang/String;)[I

    move-result-object p0

    sput-object p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_FILTER:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "exception happaned"

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    new-array p1, p0, [I

    .line 64
    fill-array-data p1, :array_0

    sput-object p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    new-array p1, p0, [I

    .line 65
    fill-array-data p1, :array_1

    sput-object p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_SKIP:[I

    new-array p0, p0, [I

    .line 66
    fill-array-data p0, :array_2

    sput-object p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_FILTER:[I

    :cond_0
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x46
        0x12c
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x1e
        0x0
    .end array-data
.end method

.method private convertToIntArray([Ljava/lang/String;)[I
    .locals 2

    .line 72
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private findSpreadDirection(Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;Landroid/graphics/Bitmap;)Z
    .locals 12

    .line 237
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 238
    iget v1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 241
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v0, v4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v0, 0x1

    :goto_1
    if-nez v1, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v1, -0x1

    .line 243
    :goto_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v1, v7, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v1, 0x1

    .line 246
    :goto_3
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/graphics/Point;-><init>(II)V

    :goto_4
    if-gt v3, v4, :cond_7

    .line 249
    iget v10, v8, Landroid/graphics/Point;->x:I

    if-ne v10, v9, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-nez v10, :cond_7

    move v10, v6

    :goto_5
    if-gt v10, v7, :cond_6

    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-nez v11, :cond_6

    if-ne v3, v0, :cond_4

    if-ne v10, v1, :cond_4

    goto :goto_6

    .line 254
    :cond_4
    invoke-virtual {p2, v3, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    if-eqz v11, :cond_5

    .line 255
    invoke-direct {p0, p2, v3, v10}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->hasTransparentSibling(Landroid/graphics/Bitmap;II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 256
    iput v3, v8, Landroid/graphics/Point;->x:I

    .line 257
    iput v10, v8, Landroid/graphics/Point;->y:I

    goto :goto_7

    :cond_5
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 265
    :cond_7
    iget v0, v8, Landroid/graphics/Point;->x:I

    if-eq v0, v9, :cond_c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 266
    new-instance v0, Landroid/graphics/Point;

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 267
    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->getNewPointAfterRotation(Landroid/graphics/Point;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 269
    new-instance v3, Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 270
    iget v4, v3, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x0

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-gez v4, :cond_9

    iget v4, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_9

    .line 271
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-gez v4, :cond_9

    .line 272
    invoke-virtual {v3, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_8

    .line 274
    :cond_8
    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v7, v3, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-virtual {p2, v4, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-nez v4, :cond_9

    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    .line 275
    invoke-direct {p0, p2, v4, v3}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->hasTransparentSibling(Landroid/graphics/Bitmap;II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 276
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v3, p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadDirection:Landroid/graphics/PointF;

    .line 280
    :cond_9
    :goto_8
    iget-object v1, p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadDirection:Landroid/graphics/PointF;

    if-nez v1, :cond_b

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->getNewPointAfterRotation(Landroid/graphics/Point;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 282
    new-instance v1, Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v7

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 283
    iget v3, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v3, v6

    if-ltz v4, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_b

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v3, v6

    if-ltz v4, :cond_b

    .line 284
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gez v3, :cond_b

    .line 285
    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    .line 287
    :cond_a
    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    if-nez v3, :cond_b

    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    .line 288
    invoke-direct {p0, p2, v3, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->hasTransparentSibling(Landroid/graphics/Bitmap;II)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 289
    new-instance p0, Landroid/graphics/PointF;

    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p0, p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadDirection:Landroid/graphics/PointF;

    .line 292
    :cond_b
    :goto_9
    iget-object p0, p1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadDirection:Landroid/graphics/PointF;

    if-eqz p0, :cond_c

    move v2, v5

    :cond_c
    return v2
.end method

.method private generateSpreadPath(Ljava/util/ArrayList;Landroid/graphics/Bitmap;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_7

    .line 301
    sget-object v5, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    aget v5, v5, v4

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 305
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_3

    :cond_0
    if-lez v4, :cond_1

    .line 310
    invoke-static {v9}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->access$000(Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v10, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 317
    sget-object v10, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_FILTER:[I

    aget v11, v10, v4

    if-eqz v11, :cond_2

    aget v10, v10, v4

    rem-int v10, v8, v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 324
    invoke-static {v9}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->access$000(Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;)Ljava/util/ArrayList;

    move-result-object v10

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    .line 325
    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    int-to-double v11, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 326
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget v15, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v15

    int-to-double v2, v10

    .line 327
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v11, v2

    .line 325
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 330
    :goto_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    sub-int v3, v5, v2

    int-to-double v12, v3

    mul-double/2addr v10, v12

    int-to-double v2, v2

    add-double/2addr v10, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v2

    double-to-int v2, v10

    .line 331
    iget-object v3, v9, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->mSpreadDirection:Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    float-to-double v10, v10

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    .line 333
    new-instance v3, Landroid/graphics/Point;

    const/4 v12, 0x0

    invoke-direct {v3, v12, v2}, Landroid/graphics/Point;-><init>(II)V

    neg-double v10, v10

    .line 334
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 333
    invoke-direct {v0, v3, v2}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->getNewPointAfterRotation(Landroid/graphics/Point;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 336
    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v10, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v10

    .line 337
    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget v10, v9, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v10

    if-ltz v3, :cond_4

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ge v3, v10, :cond_4

    if-ltz v2, :cond_4

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 341
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_SKIP:[I

    aget v10, v10, v4

    .line 342
    invoke-direct {v0, v1, v3, v2, v10}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->surroundByTransparentPoints(Landroid/graphics/Bitmap;III)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 343
    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->recordDot(Landroid/graphics/Bitmap;II)V

    .line 344
    invoke-static {v9}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->access$000(Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_4
    move/from16 v3, p3

    goto/16 :goto_1

    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 348
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_6

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSpreadPath: step= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpSketchBitmapHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, p3

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private getNewPointAfterRotation(Landroid/graphics/Point;F)Landroid/graphics/PointF;
    .locals 2

    .line 396
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 397
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 398
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p2, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 399
    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 400
    new-instance p0, Landroid/graphics/PointF;

    aget p1, p2, v1

    aget p2, p2, v0

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private hasTransparentSibling(Landroid/graphics/Bitmap;II)Z
    .locals 7

    const/4 p0, 0x0

    if-nez p2, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 144
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p2, 0x1

    :goto_1
    if-nez p3, :cond_2

    move v3, p0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, p3, -0x1

    .line 146
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne p3, v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v4, p3, 0x1

    :goto_3
    if-gt v0, v1, :cond_7

    if-nez p0, :cond_7

    move v5, v3

    :goto_4
    if-gt v5, v4, :cond_6

    if-ne v0, p2, :cond_4

    if-ne v5, p3, :cond_4

    goto :goto_5

    .line 153
    :cond_4
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-nez v6, :cond_5

    move p0, v2

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return p0
.end method

.method private recordDot(Landroid/graphics/Bitmap;II)V
    .locals 3

    .line 356
    sget p0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int v0, p2, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    add-int/2addr p2, p0

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt p2, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_1
    sub-int v2, p3, p0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr p3, p0

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lt p3, p0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    add-int/lit8 p3, p0, -0x1

    :cond_3
    :goto_1
    if-gt v0, p2, :cond_5

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_5

    move p0, v1

    :goto_2
    if-gt p0, p3, :cond_4

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, -0x1

    .line 364
    invoke-virtual {p1, v0, p0, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private surroundByTransparentPoints(Landroid/graphics/Bitmap;III)Z
    .locals 6

    const/4 p0, 0x1

    if-ge p4, p0, :cond_0

    return p0

    .line 374
    :cond_0
    sget v0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr p4, v0

    sub-int v0, p2, p4

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    move v0, v1

    :cond_1
    add-int v2, p2, p4

    .line 377
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p0

    :cond_2
    sub-int v3, p3, p4

    if-gtz v3, :cond_3

    move v3, v1

    :cond_3
    add-int/2addr p4, p3

    .line 379
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-lt p4, v4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p4, p0

    :cond_4
    :goto_0
    if-gt v0, v2, :cond_8

    .line 381
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v3

    :goto_1
    if-gt v4, p4, :cond_7

    .line 382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_7

    if-ne v0, p2, :cond_5

    if-ne v4, p3, :cond_5

    goto :goto_2

    .line 386
    :cond_5
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    if-eqz v5, :cond_6

    return v1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return p0
.end method


# virtual methods
.method public genSpreadPath(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 182
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 183
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 185
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v3, "OpSketchBitmapHelper"

    if-eqz v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genSpreadPath: width= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "height= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_5

    move v2, v6

    move v7, v2

    move v8, v7

    .line 195
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v2, v9, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_4

    move v9, v6

    .line 196
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-nez v10, :cond_3

    .line 197
    invoke-virtual {p1, v2, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    if-eqz v10, :cond_2

    .line 199
    invoke-direct {p0, p1, v2, v9}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->hasTransparentSibling(Landroid/graphics/Bitmap;II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 200
    new-instance v10, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;

    invoke-direct {v10, v2, v9}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;-><init>(II)V

    .line 202
    invoke-direct {p0, v10, p1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->findSpreadDirection(Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;Landroid/graphics/Bitmap;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 203
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    move v7, v6

    .line 213
    :goto_3
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v8, ", cost= "

    const-string v9, " ms"

    if-eqz v2, :cond_6

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "findPointAndDirection: validCount= "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", invalidCount= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", interrupt= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 222
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 223
    sget-object v2, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    array-length v2, v2

    invoke-direct {p0, p2, p1, v2}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->generateSpreadPath(Ljava/util/ArrayList;Landroid/graphics/Bitmap;I)V

    .line 225
    :cond_7
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_8

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generateSpreadPath: interrupt= "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "genSpreadPath: total cost= "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
