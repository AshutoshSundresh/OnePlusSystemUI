.class public Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;
.super Ljava/lang/Object;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpAodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpViewInfo"
.end annotation


# instance fields
.field mEnabled:Z

.field mGravity:I

.field mMarginBottomId:I

.field mMarginBottomType:I

.field mMarginEndId:I

.field mMarginEndType:I

.field mMarginLeftId:I

.field mMarginLeftType:I

.field mMarginRightId:I

.field mMarginRightType:I

.field mMarginStartId:I

.field mMarginStartType:I

.field mMarginTopId:I

.field mMarginTopType:I

.field mSizeType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 472
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginStartId:I

    .line 473
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginEndId:I

    .line 474
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginLeftId:I

    .line 475
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginRightId:I

    .line 476
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginTopId:I

    .line 477
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginBottomId:I

    const/16 v0, 0x11

    .line 478
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mGravity:I

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 0

    .line 490
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mGravity:I

    return p0
.end method

.method public getMarginBottom(Landroid/content/Context;)I
    .locals 2

    .line 574
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginBottomId:I

    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginBottomType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getMarginEnd(Landroid/content/Context;)I
    .locals 2

    .line 558
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginEndId:I

    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginEndType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getMarginLeft(Landroid/content/Context;)I
    .locals 2

    .line 562
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginLeftId:I

    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginLeftType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getMarginLeftId()I
    .locals 0

    .line 506
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginLeftId:I

    return p0
.end method

.method public getMarginRight(Landroid/content/Context;)I
    .locals 2

    .line 566
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginRightId:I

    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginRightType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getMarginRightId()I
    .locals 0

    .line 510
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginRightId:I

    return p0
.end method

.method public getMarginStart(Landroid/content/Context;)I
    .locals 2

    .line 554
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginStartId:I

    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginStartType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getMarginTop(Landroid/content/Context;)I
    .locals 2

    .line 570
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginTopId:I

    iget v1, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginTopType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public getSize(Landroid/content/Context;I)I
    .locals 1

    .line 550
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mSizeType:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSizeInner(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method protected getSizeInner(Landroid/content/Context;II)I
    .locals 0

    const/4 p0, -0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x1

    if-ne p3, p0, :cond_0

    .line 581
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p3, p0, :cond_1

    .line 584
    invoke-static {p1, p2}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 587
    :cond_1
    invoke-static {p1, p2}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    const-string p1, "OpAodSettings"

    const-string p2, "getSizeInner occur exception"

    .line 590
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 494
    iget-boolean p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mEnabled:Z

    return p0
.end method

.method parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .line 483
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parseOp(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 485
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parseMargin(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parseGravity(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected parseGravity(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 643
    sget-object v0, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 645
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_1

    .line 647
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x800003

    .line 650
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mGravity:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected parseMargin(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 611
    sget-object v0, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_0

    .line 615
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 621
    :pswitch_0
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginEndId:I

    goto :goto_1

    .line 618
    :pswitch_1
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginStartId:I

    goto :goto_1

    .line 633
    :pswitch_2
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginBottomId:I

    goto :goto_1

    .line 627
    :pswitch_3
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginRightId:I

    goto :goto_1

    .line 630
    :pswitch_4
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginTopId:I

    goto :goto_1

    .line 624
    :pswitch_5
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginLeftId:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseOp(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 597
    sget-object v0, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 599
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_show:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mEnabled:Z

    .line 600
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_marginStartType:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginStartType:I

    .line 601
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_marginEndType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginEndType:I

    .line 602
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_marginLeftType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginLeftType:I

    .line 603
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_marginRightType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginRightType:I

    .line 604
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_marginTopType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginTopType:I

    .line 605
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_marginBottomType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mMarginBottomType:I

    .line 606
    sget p2, Lcom/android/systemui/R$styleable;->OpAodLayoutInfo_sizeType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->mSizeType:I

    .line 607
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
