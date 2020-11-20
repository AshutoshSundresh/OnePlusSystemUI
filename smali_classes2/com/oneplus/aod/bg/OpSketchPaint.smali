.class public Lcom/oneplus/aod/bg/OpSketchPaint;
.super Lcom/oneplus/aod/bg/OpBasePaint;
.source "OpSketchPaint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;
    }
.end annotation


# static fields
.field private static final CONTOUR_HALT_COUNT:I

.field private static final DRAW_TEST:Z

.field private static final MAX_CIRCLE_RAIDUS:I

.field private static final MIN_CIRCLE_RAIDUS:I

.field private static final SPREAD_DURATION:I


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mContourPaint:Landroid/graphics/Paint;

.field private mContourPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SketchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mContourScale:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mMaskPaint:[Landroid/graphics/Paint;

.field private mMaskPath:[Landroid/graphics/Path;

.field private mPm:Landroid/os/PowerManager;

.field private mScaleFactor:F

.field private mSketchBitmapHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

.field private mSpreadPaint:Landroid/graphics/Paint;

.field private mSpreadPathGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

.field private mSpreadPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSpreadScale:F

.field private mSpreadStep:I

.field private mSpreadStepCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.sketch.sp.duration"

    const/16 v1, 0x12c

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->SPREAD_DURATION:I

    const-string v0, "sys.sketch.circle.min"

    const/16 v1, 0xa

    .line 41
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    const-string v0, "sys.sketch.circle.max"

    const/16 v1, 0x64

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    const-string v0, "sys.sketch.test"

    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/bg/OpSketchPaint;->DRAW_TEST:Z

    const-string v0, "sys.sketch.halt"

    const/4 v1, 0x5

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/aod/bg/OpSketchPaint;->CONTOUR_HALT_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 76
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpBasePaint;-><init>()V

    .line 78
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    invoke-direct {v0, v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSketchBitmapHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPoints:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPaint:Landroid/graphics/Paint;

    sget v3, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x4

    new-array v3, v0, [Landroid/graphics/Paint;

    .line 97
    iput-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    .line 98
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 99
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v6, v6, v5

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v4, v3, v1

    .line 104
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v6, v6, v5

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 105
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v7, v7, v5

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v7, 0x3

    aput-object v4, v3, v7

    .line 107
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v5

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v8, -0x3ee00000    # -10.0f

    .line 108
    invoke-virtual {v3, v4, v8, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 109
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v1

    const/high16 v9, 0x41200000    # 10.0f

    .line 110
    invoke-virtual {v3, v4, v9, v8, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 111
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v6

    .line 112
    invoke-virtual {v3, v4, v8, v9, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 113
    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v3, v3, v7

    .line 114
    invoke-virtual {v3, v4, v9, v9, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-array v0, v0, [Landroid/graphics/Path;

    .line 116
    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    .line 117
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v0, v5

    .line 118
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v0, v1

    .line 119
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aput-object v1, v0, v6

    .line 120
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aput-object v1, v0, v7

    const v0, 0x3f8ccccd    # 1.1f

    .line 122
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    .line 123
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScale:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    .line 124
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScale:F

    .line 126
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 128
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "properties: MIN_CIRCLE_RAIDUS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MAX_CIRCLE_RAIDUS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SPREAD_DURATION= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/aod/bg/OpSketchPaint;->SPREAD_DURATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Path;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/bg/OpSketchPaint;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/bg/OpSketchPaint;)Landroid/graphics/Paint;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/bg/OpSketchPaint;)[Landroid/graphics/Paint;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    return-object p0
.end method

.method private drawMaskPoint(Landroid/graphics/Canvas;I)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    aget-object v0, v0, p2

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object p0, p0, p2

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getSketchAnimator()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 371
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    .line 373
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 374
    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    new-array v4, v2, [I

    .line 375
    sget v5, Lcom/oneplus/aod/bg/OpSketchPaint;->MIN_CIRCLE_RAIDUS:I

    aput v5, v4, v0

    sget v5, Lcom/oneplus/aod/bg/OpSketchPaint;->MAX_CIRCLE_RAIDUS:I

    const/4 v6, 0x1

    aput v5, v4, v6

    const-string v5, "radius"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    new-array v5, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v0

    aput-object v4, v5, v6

    .line 377
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 378
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 379
    sget v0, Lcom/oneplus/aod/bg/OpSketchPaint;->SPREAD_DURATION:I

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 380
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchPaint$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$1;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    new-instance v0, Lcom/oneplus/aod/bg/OpSketchPaint$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$2;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v2, [F

    .line 427
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 428
    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    .line 429
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    new-instance v2, Lcom/oneplus/aod/bg/OpSketchPaint$3;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/bg/OpSketchPaint$3;-><init>(Lcom/oneplus/aod/bg/OpSketchPaint;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 444
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hasPathToDraw()Z
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    aget-object v0, v0, v2

    .line 326
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    const/4 v0, 0x3

    aget-object p0, p0, v0

    .line 328
    invoke-virtual {p0}, Landroid/graphics/Path;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private makeNextMove()V
    .locals 3

    .line 317
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 318
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 320
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    :goto_0
    return-void
.end method

.method private resetInner()V
    .locals 1

    const/4 v0, -0x1

    .line 312
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStepCount:I

    return-void
.end method

.method private stopGeneratorIfPossible()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPathGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPathGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "stopGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPathGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPathGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

    :cond_0
    return-void
.end method


# virtual methods
.method public burnInProtect()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "burnInProtect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v0, "do nothing."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 280
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStepCount:I

    add-int/lit8 v1, v0, 0x1

    sget v2, Lcom/oneplus/aod/bg/OpSketchPaint;->CONTOUR_HALT_COUNT:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 281
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStepCount:I

    .line 282
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "burn-in contour: count= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStepCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStepCount:I

    .line 291
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->makeNextMove()V

    .line 292
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public genAodDisappearAnimation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->getSketchAnimator()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 207
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/high16 v2, -0x1000000

    if-eq v0, v2, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->hasPathToDraw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 214
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 215
    invoke-direct {p0, p1, v1}, Lcom/oneplus/aod/bg/OpSketchPaint;->drawMaskPoint(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x1

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->drawMaskPoint(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x2

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->drawMaskPoint(Landroid/graphics/Canvas;I)V

    const/4 v0, 0x3

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/bg/OpSketchPaint;->drawMaskPoint(Landroid/graphics/Canvas;I)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 222
    :cond_0
    sget-boolean v0, Lcom/oneplus/aod/bg/OpSketchPaint;->DRAW_TEST:Z

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 224
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 225
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 226
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v1, -0x10000

    .line 227
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 229
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 231
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    :cond_2
    :goto_1
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    if-ltz v0, :cond_6

    sget-object v1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper;->SPREAD_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 241
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 242
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;

    .line 244
    invoke-virtual {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->getSpreadPath()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    .line 245
    invoke-virtual {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->getSpreadPath()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    goto :goto_2

    .line 248
    :cond_4
    invoke-virtual {v1}, Lcom/oneplus/aod/bg/OpSketchBitmapHelper$SpreadPoint;->getSpreadPath()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadStep:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 249
    iget v2, v1, Landroid/graphics/Point;->x:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    int-to-float v2, v2

    .line 250
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 253
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 258
    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_3
    return-void
.end method

.method public onSizeChanged(II)V
    .locals 6

    .line 158
    invoke-super {p0, p1, p2}, Lcom/oneplus/aod/bg/OpBasePaint;->onSizeChanged(II)V

    .line 161
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 162
    iget v2, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 164
    iget v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    if-eqz v3, :cond_1

    int-to-float v4, v0

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v2, v5

    div-float/2addr v4, v2

    int-to-float v2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v2, v3

    cmpl-float v3, v4, v2

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 168
    :goto_0
    iput v4, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScale:F

    :cond_1
    const/high16 v2, 0x40800000    # 4.0f

    .line 171
    iget v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScale:F

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadScale:F

    .line 173
    iget v2, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    .line 174
    iget v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mHeight:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    iput v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    .line 176
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mBitmapWidth= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mBitmapHeight= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mContourScale= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourScale:F

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mDeltaX= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaX:F

    neg-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mDeltaY= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mDeltaY:F

    neg-float p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mScaleFactor= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public recover()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "recover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 300
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->stopGeneratorIfPossible()V

    .line 139
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p0

    check-cast p0, Landroid/graphics/BitmapShader;

    .line 142
    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object p0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    .line 190
    invoke-super {p0}, Lcom/oneplus/aod/bg/OpBasePaint;->reset()V

    .line 192
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPaint:[Landroid/graphics/Paint;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 195
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mMaskPath:[Landroid/graphics/Path;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    return-void
.end method

.method public setup(Landroid/view/View;)V
    .locals 1

    .line 149
    invoke-super {p0, p1}, Lcom/oneplus/aod/bg/OpBasePaint;->setup(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mPm:Landroid/os/PowerManager;

    :cond_0
    return-void
.end method

.method public setupContour(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 3

    .line 338
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapWidth:I

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mBitmapHeight:I

    .line 342
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 344
    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 347
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 348
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mContourPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 350
    invoke-virtual {p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;->getScale()F

    move-result p1

    iput p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mScaleFactor:F

    .line 352
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->stopGeneratorIfPossible()V

    .line 354
    new-instance p1, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSketchBitmapHelper:Lcom/oneplus/aod/bg/OpSketchBitmapHelper;

    invoke-direct {p1, v1, v0, v2}, Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;-><init>(Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/oneplus/aod/bg/OpSketchBitmapHelper;)V

    iput-object p1, p0, Lcom/oneplus/aod/bg/OpSketchPaint;->mSpreadPathGenerator:Lcom/oneplus/aod/bg/OpSketchPaint$SpreadPathGenerator;

    .line 356
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public userActivityInAlwaysOn()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mTag:Ljava/lang/String;

    const-string v1, "userActivityInAlwaysOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;->resetInner()V

    .line 308
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpBasePaint;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
