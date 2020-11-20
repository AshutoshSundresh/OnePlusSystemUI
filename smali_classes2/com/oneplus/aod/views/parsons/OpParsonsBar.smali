.class public Lcom/oneplus/aod/views/parsons/OpParsonsBar;
.super Landroid/view/View;
.source "OpParsonsBar.java"


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private mBarDistanceBottom:I

.field private mBarDistanceBottomId:I

.field private mBarDistanceTop:I

.field private mBarDistanceTopId:I

.field private mBarHeight:I

.field private mBarMarginBottom:I

.field private mBarMarginBottomId:I

.field private mBarWidth:I

.field private mBarWidthId:I

.field private mBorder:I

.field private mBorderId:I

.field private mClearPaint:Landroid/graphics/Paint;

.field private mColors:[I

.field private mGap:I

.field private mGapId:I

.field private mOverlayView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mPositions:[F

.field private mStartTime:Ljava/lang/String;

.field private mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

.field private mUnlockMarginBottom:I

.field private mUnlockMarginBottomId:I

.field private mUnlockMarginTop:I

.field private mUnlockMarginTopId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->setupAttributes(Landroid/util/AttributeSet;)V

    .line 83
    new-instance p2, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-direct {p2, p1, p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;-><init>(Landroid/content/Context;Lcom/oneplus/aod/views/parsons/OpParsonsBar;)V

    iput-object p2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->updateResource()V

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 88
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private convertToSeconds(Ljava/lang/String;)I
    .locals 1

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 327
    :try_start_0
    sget-object p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p1

    mul-int/lit16 p1, p1, 0xe10

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p1, p0

    return p1

    :catch_0
    move-exception p0

    const-string p1, "OpParsonsBar"

    const-string v0, "convertToSeconds occur parse exception"

    .line 330
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private convertToSeconds(Ljava/util/Date;)I
    .locals 1

    .line 320
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result p0

    mul-int/lit16 p0, p0, 0xe10

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr p0, v0

    .line 321
    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private readColors(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 299
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mColors:[I

    const/4 v0, 0x0

    move v1, v0

    .line 301
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mColors:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private readPositions(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPositions:[F

    const/4 v0, 0x0

    .line 312
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPositions:[F

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private updateShader()V
    .locals 9

    .line 291
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mColors:[I

    iget-object v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 293
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 294
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method calculateBarHeight(Landroid/view/View;)V
    .locals 3

    .line 270
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTop:I

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iget p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottom:I

    add-int/2addr v0, p1

    .line 273
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodHighlightY(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {v1}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodHighlightSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/systemui/biometrics/OpFodViewSettings;->getFodIconSize(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 275
    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottom:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 281
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 282
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method getBarHeight()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    return p0
.end method

.method getBarWidth()I
    .locals 0

    .line 265
    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    return p0
.end method

.method getOverlayView()Landroid/view/View;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 102
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->startListen()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 109
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->stopListen()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 124
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGap:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 125
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v2, v1

    sub-float v4, v2, v0

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    int-to-float v2, v2

    sub-float v5, v2, v0

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v0

    move v3, v0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 133
    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 142
    iget-object v3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    float-to-int v5, v0

    iget v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTop:I

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v7, v2

    iget-object v9, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v1

    invoke-virtual/range {v3 .. v9}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->clearUnlockRecord(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 150
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v0, v2

    .line 151
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v2, v0

    sub-float v6, v2, v5

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    int-to-float v2, v2

    sub-float v7, v2, v5

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v5

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    int-to-float v4, v1

    .line 157
    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    int-to-float v5, v2

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mClearPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 114
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->updateShader()V

    :cond_0
    return-void
.end method

.method onTimeChanged(Ljava/util/Date;)V
    .locals 9

    .line 222
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mStartTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->convertToSeconds(Ljava/lang/String;)I

    move-result v0

    .line 223
    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v2, v1, 0xe10

    sub-int v2, v0, v2

    .line 224
    div-int/lit8 v2, v2, 0x3c

    .line 225
    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->convertToSeconds(Ljava/util/Date;)I

    move-result v3

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 228
    invoke-virtual {v4, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v7, 0xb

    if-ltz v3, :cond_0

    .line 231
    invoke-virtual {v4, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 232
    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 233
    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    const/4 v8, -0x1

    .line 235
    invoke-virtual {v4, v3, v8}, Ljava/util/Calendar;->add(II)V

    .line 236
    invoke-virtual {v4, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 237
    invoke-virtual {v4, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 238
    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 241
    :goto_0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 242
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 246
    iget-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 249
    iget-object v4, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    iget v4, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTop:I

    .line 252
    iget v5, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarHeight:I

    iget v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v5, v5

    const v6, 0x47a8c000    # 86400.0f

    div-float/2addr v5, v6

    .line 256
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    long-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v5, v6

    add-int/2addr v4, v5

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object v4, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->onTimeChanged(JJ)V

    return-void
.end method

.method setOverlayView(Landroid/view/View;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mOverlayView:Landroid/view/View;

    return-void
.end method

.method setUnlocksMsg(Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->setUnlocksMsg(Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;)V

    return-void
.end method

.method setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .line 161
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpParsonsClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 163
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_colors:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->readColors(I)V

    .line 164
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_positions:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->readPositions(I)V

    .line 165
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidthId:I

    .line 167
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_border:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorderId:I

    .line 168
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_gap:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGapId:I

    .line 169
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barDistanceTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTopId:I

    .line 170
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barDistanceBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottomId:I

    .line 171
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_barStartTime:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mStartTime:Ljava/lang/String;

    .line 172
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginTop1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTopId:I

    .line 173
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_unlockMarginBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottomId:I

    .line 174
    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsClock_clockMarginBottom1:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottomId:I

    .line 175
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method updateResource()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockDataHelper:Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;

    invoke-virtual {v0}, Lcom/oneplus/aod/views/parsons/OpUnlockDataHelper;->updateResources()V

    .line 180
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidthId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarWidth:I

    .line 186
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorderId:I

    if-eq v0, v1, :cond_1

    .line 187
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBorder:I

    .line 189
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGapId:I

    if-eq v0, v1, :cond_2

    .line 190
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mGap:I

    .line 192
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTopId:I

    if-eq v0, v1, :cond_3

    .line 193
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceTop:I

    .line 195
    :cond_3
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottomId:I

    if-eq v0, v1, :cond_4

    .line 196
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarDistanceBottom:I

    .line 198
    :cond_4
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTopId:I

    if-eq v0, v1, :cond_5

    .line 199
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginTop:I

    .line 201
    :cond_5
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottomId:I

    if-eq v0, v1, :cond_6

    .line 202
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mUnlockMarginBottom:I

    .line 204
    :cond_6
    iget v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottomId:I

    if-eq v0, v1, :cond_7

    .line 205
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsBar;->mBarMarginBottom:I

    :cond_7
    return-void
.end method
