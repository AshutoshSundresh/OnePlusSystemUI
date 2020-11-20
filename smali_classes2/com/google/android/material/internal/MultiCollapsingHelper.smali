.class public final Lcom/google/android/material/internal/MultiCollapsingHelper;
.super Ljava/lang/Object;
.source "MultiCollapsingHelper.java"


# static fields
.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private collapsedSubtitleColor:Landroid/content/res/ColorStateList;

.field private collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

.field private collapsedSubtitleShadowDx:F

.field private collapsedSubtitleShadowDy:F

.field private collapsedSubtitleShadowRadius:F

.field private collapsedSubtitleSize:F

.field private collapsedSubtitleTypeface:Landroid/graphics/Typeface;

.field private collapsedSubtitleX:F

.field private collapsedSubtitleY:F

.field private currentSubtitleSize:F

.field private currentSubtitleTypeface:Landroid/graphics/Typeface;

.field private currentSubtitleX:F

.field private currentSubtitleY:F

.field private expandedSubtitleColor:Landroid/content/res/ColorStateList;

.field private expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

.field private expandedSubtitleShadowDx:F

.field private expandedSubtitleShadowDy:F

.field private expandedSubtitleShadowRadius:F

.field private expandedSubtitleSize:F

.field private expandedSubtitleTexture:Landroid/graphics/Bitmap;

.field private expandedSubtitleTypeface:Landroid/graphics/Typeface;

.field private expandedSubtitleX:F

.field private expandedSubtitleY:F

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private mAppbarMarginBottom:I

.field private mAppbarMarginLeft:I

.field private mAppbarMarginRight:I

.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedTextBlend:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTitleShadowDx:F

.field private mCollapsedTitleShadowDy:F

.field private mCollapsedTitleShadowRadius:F

.field private mCollapsedTitleTexture:Landroid/graphics/Bitmap;

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTitleSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawBitmap:Landroid/graphics/Bitmap;

.field private mDrawLine:Z

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFirstLineDrawX:F

.field private mExpandedFraction:F

.field private mExpandedTextBlend:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

.field private mExpandedTitleShadowDx:F

.field private mExpandedTitleShadowDy:F

.field private mExpandedTitleShadowRadius:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mInsetSubtitleImage:Z

.field private mIsRtl:Z

.field private mMenuMargin:I

.field private mPositionInterpolator:Landroid/animation/TimeInterpolator;

.field private mScale:F

.field private mShowDrawLine:Z

.field private mState:[I

.field private mSyncBottomY:F

.field private mSyncLeftX:F

.field private mSyncRightX:F

.field private mSyncText:Ljava/lang/CharSequence;

.field private mSyncTopY:F

.field private mTempY:F

.field private mTextLayout:Landroid/text/StaticLayout;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextToDrawCollapsed:Ljava/lang/CharSequence;

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseTexture:Z

.field private final mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

.field private maxLines:I

.field private subtitle:Ljava/lang/CharSequence;

.field private final subtitlePaint:Landroid/text/TextPaint;

.field private subtitleScale:F

.field private subtitleTexturePaint:Landroid/graphics/Paint;

.field private subtitleToDraw:Ljava/lang/CharSequence;

.field private syncColorList:Landroid/content/res/ColorStateList;

.field private final syncTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    sget-object v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 80
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    .line 81
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 82
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    .line 83
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    const/4 v0, 0x2

    .line 136
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 138
    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    .line 146
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mShowDrawLine:Z

    .line 151
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 153
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 154
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 155
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    .line 156
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->oneplus_accent_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    .line 157
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 159
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1079
    invoke-virtual {p1, p2}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static blendColors(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1468
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 1469
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 1470
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 1471
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 1472
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private calculateBaseOffsets()V
    .locals 16

    move-object/from16 v0, p0

    .line 709
    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    .line 710
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    .line 711
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 713
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    .line 714
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    .line 717
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 718
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 719
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 720
    :goto_0
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 721
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 724
    :goto_1
    iget v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    iget-boolean v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    invoke-static {v8, v9}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    .line 727
    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 728
    :goto_2
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    iget-object v11, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->ascent()F

    move-result v11

    sub-float/2addr v10, v11

    const/16 v11, 0x50

    const/16 v12, 0x30

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v3, :cond_5

    and-int/lit8 v10, v8, 0x70

    if-eq v10, v12, :cond_4

    if-eq v10, v11, :cond_3

    div-float/2addr v9, v13

    .line 739
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v14, 0x3

    invoke-static {v10, v14}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v10

    add-float/2addr v9, v10

    .line 740
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v9

    iput v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto/16 :goto_4

    .line 732
    :cond_3
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v9

    iput v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto/16 :goto_4

    .line 735
    :cond_4
    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iput v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    goto/16 :goto_4

    .line 744
    :cond_5
    iget-object v14, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v10, v9

    sub-float/2addr v14, v10

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v14, v10

    .line 745
    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget-object v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 746
    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    const v15, 0x400ccccd    # 2.2f

    add-float/2addr v5, v15

    cmpl-float v5, v14, v5

    if-lez v5, :cond_6

    move v5, v14

    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 747
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v15, Lcom/google/android/material/R$dimen;->op_app_bar_margin_top:I

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    :goto_3
    add-float/2addr v10, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 748
    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v10, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    add-float/2addr v10, v5

    iput v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    .line 749
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v14, v13

    add-float/2addr v5, v14

    add-float/2addr v5, v9

    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 750
    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/google/android/material/R$dimen;->op_app_bar_collapsed_top_subtitle_margin:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleY:F

    .line 751
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    const/16 v9, 0x64

    if-ge v5, v9, :cond_7

    .line 752
    iget v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v9, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    add-float/2addr v5, v9

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    .line 757
    :cond_7
    :goto_4
    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcom/google/android/material/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    const v9, 0x800007

    and-int/2addr v8, v9

    const/4 v10, 0x5

    const/4 v14, 0x1

    if-eq v8, v14, :cond_b

    if-eq v8, v10, :cond_9

    .line 770
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v4

    iput v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    .line 771
    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_5

    :cond_8
    move v7, v6

    :goto_5
    add-int/2addr v4, v7

    int-to-float v4, v4

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    goto :goto_8

    .line 765
    :cond_9
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v15, v8

    sub-float/2addr v15, v4

    iput v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    int-to-float v4, v8

    sub-float/2addr v4, v7

    .line 766
    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_a

    move v7, v5

    goto :goto_6

    :cond_a
    move v7, v6

    :goto_6
    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    goto :goto_8

    .line 761
    :cond_b
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v13

    sub-float/2addr v8, v4

    iput v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    .line 762
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v7, v13

    sub-float/2addr v4, v7

    iget-boolean v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v7, :cond_c

    move v7, v5

    goto :goto_7

    :cond_c
    move v7, v6

    :goto_7
    int-to-float v7, v7

    add-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    .line 775
    :goto_8
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    .line 776
    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    invoke-direct {v0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    .line 779
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v6}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    .line 780
    :goto_9
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    if-eqz v7, :cond_e

    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 781
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v8, v7, v6, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v7

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    .line 782
    :goto_a
    iget-object v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v8, :cond_f

    invoke-virtual {v8, v6}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v8

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    iput v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFirstLineDrawX:F

    .line 785
    iget v8, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    iget-boolean v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    invoke-static {v8, v15}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    .line 789
    iget-object v15, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroid/text/StaticLayout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    goto :goto_c

    :cond_10
    const/4 v15, 0x0

    .line 790
    :goto_c
    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    iget-object v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    sub-float/2addr v6, v10

    div-float v10, v15, v13

    .line 791
    iget-object v13, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v13}, Landroid/text/TextPaint;->descent()F

    move-result v13

    sub-float v13, v10, v13

    if-eqz v3, :cond_13

    and-int/lit8 v3, v8, 0x70

    if-eq v3, v12, :cond_12

    if-eq v3, v11, :cond_11

    .line 803
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v10

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_d

    .line 795
    :cond_11
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v15

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_d

    .line 798
    :cond_12
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    goto :goto_d

    :cond_13
    and-int/lit8 v3, v8, 0x70

    if-eq v3, v12, :cond_15

    if-eq v3, v11, :cond_14

    .line 819
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v10

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    add-float/2addr v3, v6

    add-float/2addr v3, v13

    .line 820
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    goto :goto_d

    .line 809
    :cond_14
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v3

    sub-float/2addr v10, v6

    sub-float/2addr v10, v15

    iput v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    int-to-float v3, v3

    sub-float/2addr v3, v15

    .line 810
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    goto :goto_d

    .line 813
    :cond_15
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    add-float/2addr v3, v6

    add-float/2addr v3, v15

    .line 814
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    :goto_d
    and-int v3, v8, v9

    if-eq v3, v14, :cond_19

    const/4 v6, 0x5

    if-eq v3, v6, :cond_17

    .line 837
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iput v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    .line 838
    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_16

    move v6, v5

    goto :goto_e

    :cond_16
    const/4 v6, 0x0

    :goto_e
    add-int/2addr v3, v6

    int-to-float v3, v3

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    goto :goto_11

    .line 832
    :cond_17
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    sub-float/2addr v6, v4

    iput v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    int-to-float v3, v3

    sub-float/2addr v3, v7

    .line 833
    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_18

    move v6, v5

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    :goto_f
    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    goto :goto_11

    .line 828
    :cond_19
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    .line 829
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v7, v6

    sub-float/2addr v3, v7

    iget-boolean v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v4, :cond_1a

    move v6, v5

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    :goto_10
    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    .line 843
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    .line 845
    invoke-direct {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedTextSize(F)V

    .line 846
    invoke-direct {v0, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedSubtitleSize(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1036
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1038
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 1040
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private calculateOffsets(F)V
    .locals 7

    .line 468
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->interpolateBounds(F)V

    .line 469
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawX:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawX:F

    .line 471
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawY:F

    .line 473
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleX:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    .line 475
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleY:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    .line 477
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedTextSize(F)V

    .line 479
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 480
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 479
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInterpolatedSubtitleSize(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 483
    sget-object v2, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextBlend(F)V

    .line 484
    sget-object v1, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextBlend(F)V

    .line 487
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    .line 490
    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 496
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowRadius:F

    const/4 v3, 0x0

    .line 497
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDx:F

    .line 498
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDy:F

    .line 499
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

    .line 500
    invoke-direct {p0, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v6

    invoke-static {v5, v6, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v5

    .line 496
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 502
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    .line 506
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedSubtitleColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result v1

    .line 505
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 507
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentSyncTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowRadius:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowRadius:F

    .line 513
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDx:F

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDx:F

    .line 514
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDy:F

    iget v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDy:F

    .line 515
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    .line 517
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 516
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->blendColors(IIF)I

    move-result p1

    .line 512
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 519
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingSubtitleSize(F)V
    .locals 8

    .line 598
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 603
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 609
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 610
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    .line 611
    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    .line 612
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    .line 613
    iput-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    move v1, v3

    goto :goto_3

    :cond_1
    move v1, v5

    goto :goto_3

    .line 618
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    .line 619
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 620
    iput-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    move v6, v3

    goto :goto_0

    :cond_3
    move v6, v5

    .line 623
    :goto_0
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 625
    iput v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    goto :goto_1

    .line 628
    :cond_4
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    .line 631
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 640
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 648
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 650
    :cond_6
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    .line 651
    iput-boolean v5, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 655
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 656
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 658
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, v5

    :goto_4
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 659
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleSize:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 660
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 661
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 663
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 666
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    if-lez v2, :cond_a

    move v5, v2

    :cond_a
    int-to-float v2, v5

    sub-float/2addr v0, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 672
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 673
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    .line 674
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    :cond_b
    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 14

    .line 1083
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 1086
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 1094
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 1095
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    .line 1096
    iput v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    .line 1097
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    move v6, v1

    move v1, v0

    move v0, v5

    goto :goto_3

    .line 1106
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    .line 1107
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v6, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->areTypefacesDifferent(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1108
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    .line 1111
    :goto_1
    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isClose(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1113
    iput v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    goto :goto_2

    .line 1116
    :cond_4
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    div-float/2addr p1, v3

    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    .line 1118
    :goto_2
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    div-float/2addr p1, v3

    mul-float/2addr p1, v1

    cmpl-float p1, p1, v0

    .line 1137
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->maxLines:I

    move v0, p1

    move p1, v2

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 1141
    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    cmpl-float v3, v3, p1

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    if-nez v3, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v5

    .line 1142
    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    .line 1143
    iput-boolean v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 1145
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz p1, :cond_8

    if-eqz v6, :cond_f

    .line 1146
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1147
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    if-lez v2, :cond_c

    .line 1152
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v9, v1

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v11, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    iget v12, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/4 v13, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1155
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-le v2, v0, :cond_b

    sub-int/2addr v0, v5

    const-string v2, ""

    if-lez v0, :cond_9

    .line 1157
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    add-int/lit8 v6, v0, -0x1

    .line 1158
    invoke-virtual {p1, v6}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    invoke-interface {v3, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object v3, v2

    .line 1159
    :goto_6
    iget-object v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 1160
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p1

    .line 1159
    invoke-interface {v6, v7, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1163
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_a

    .line 1164
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_a
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p1, v0, v4

    const-string p1, "\u2026"

    aput-object p1, v0, v5

    const/4 p1, 0x2

    aput-object v2, v0, p1

    .line 1168
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1170
    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v1, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v3, p1, v4

    aput-object v0, p1, v5

    .line 1172
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_7

    .line 1175
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    .line 1178
    :goto_7
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1179
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1180
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mIsRtl:Z

    .line 1186
    :cond_c
    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    const v0, 0x800007

    and-int/2addr p1, v0

    if-eq p1, v5, :cond_e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_d

    const v0, 0x800005

    if-eq p1, v0, :cond_d

    .line 1197
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 1192
    :cond_d
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_8

    .line 1188
    :cond_e
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_8
    move-object v6, p1

    .line 1201
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    float-to-int v5, v1

    iget v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingMultiplier:F

    iget v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->lineSpacingExtra:F

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    :cond_f
    :goto_9
    return-void
.end method

.method private clearTexture()V
    .locals 2

    .line 1418
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1420
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1424
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1425
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1428
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1429
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    .line 1432
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1433
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1434
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private ensureCollapsedTexture()V
    .locals 8

    .line 1237
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1241
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 1242
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1243
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    return-void

    .line 1247
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    .line 1248
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1249
    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1250
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget v6, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v6, v0, v6

    iget-object v7, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1249
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1251
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1253
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureCrossSectionTexture()V
    .locals 11

    .line 1258
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1262
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 1263
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    .line 1264
    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    .line 1263
    invoke-virtual {v0, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1265
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gtz v0, :cond_1

    if-gtz v1, :cond_1

    return-void

    .line 1269
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    .line 1270
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1271
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    .line 1272
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    .line 1275
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    .line 1276
    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v9, v0, v1

    iget-object v10, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1275
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1277
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 1279
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_4
    :goto_1
    return-void
.end method

.method private ensureExpandedSubtitleTexture()V
    .locals 9

    .line 537
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 541
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 542
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 543
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 542
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 544
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gez v1, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    .line 552
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 553
    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 557
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 3

    .line 1208
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1212
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    .line 1216
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    .line 1217
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 1223
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    .line 1226
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1227
    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1229
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 1231
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 702
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentColor(Landroid/content/res/ColorStateList;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 684
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz p0, :cond_1

    .line 685
    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 687
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private getCurrentExpandedSubtitleColor()I
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private getCurrentSyncTextColor()I
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private interpolateBounds(F)V
    .locals 4

    .line 850
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 852
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawY:F

    iget v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedDrawY:F

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 854
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 856
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mPositionInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->lerp(FFFLandroid/animation/TimeInterpolator;)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 1449
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static lerp(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1478
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 1480
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 3

    .line 335
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103ac

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 338
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .line 1484
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCollapsedTextBlend(F)V
    .locals 0

    .line 1060
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextBlend:F

    .line 1061
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setExpandedTextBlend(F)V
    .locals 0

    .line 1065
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextBlend:F

    .line 1066
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setInterpolatedSubtitleSize(F)V
    .locals 1

    .line 523
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingSubtitleSize(F)V

    .line 526
    sget-boolean p1, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureExpandedSubtitleTexture()V

    .line 533
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setInterpolatedTextSize(F)V
    .locals 1

    .line 1044
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateUsingTextSize(F)V

    .line 1046
    sget-boolean p1, Lcom/google/android/material/internal/MultiCollapsingHelper;->USE_SCALING_TEXTURE:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz p1, :cond_1

    .line 1049
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureExpandedTexture()V

    .line 1051
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureCollapsedTexture()V

    .line 1052
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->ensureCrossSectionTexture()V

    .line 1054
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public calculateCurrentOffsets()V
    .locals 1

    .line 464
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateOffsets(F)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 863
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    iget-boolean v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawTitle:Z

    if-eqz v1, :cond_1f

    .line 864
    iget v10, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawX:F

    .line 865
    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawY:F

    .line 866
    iget v11, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleX:F

    .line 867
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    .line 870
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 871
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v12, 0x1

    if-ne v3, v12, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_1

    .line 872
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSubtitleLocationX()F

    move-result v4

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSubtitleLocationX()F

    move-result v3

    :goto_1
    move v15, v3

    .line 873
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 874
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    not-int v5, v4

    not-int v4, v4

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    not-int v6, v6

    sub-int/2addr v4, v6

    sub-int/2addr v5, v4

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v3

    sub-int/2addr v5, v4

    .line 875
    iget v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->currentSubtitleY:F

    int-to-float v4, v5

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    iget v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 876
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v3, v4

    .line 877
    iget-boolean v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mUseTexture:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    move/from16 v16, v12

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    .line 883
    :goto_2
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentTitleSize:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v16, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_3

    .line 890
    :cond_3
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    mul-float/2addr v3, v4

    .line 891
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    iget v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    mul-float/2addr v4, v5

    move v5, v3

    :goto_3
    if-eqz v16, :cond_4

    add-float/2addr v1, v5

    add-float/2addr v2, v4

    :cond_4
    move v4, v1

    move v3, v2

    .line 907
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 908
    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v17

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mShowDrawLine:Z

    if-eqz v1, :cond_7

    .line 909
    :cond_6
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v12, Lcom/google/android/material/R$dimen;->op_control_divider_height_standard:I

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 910
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v12, Lcom/google/android/material/R$color;->op_control_divider_color_default:I

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 911
    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    int-to-float v6, v1

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 912
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    sub-int/2addr v1, v12

    int-to-float v12, v1

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 913
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v13, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    sub-int/2addr v1, v13

    iget v13, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginRight:I

    sub-int/2addr v1, v13

    int-to-float v13, v1

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 914
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    move/from16 v19, v2

    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move/from16 v21, v7

    move/from16 v7, v19

    move/from16 v19, v2

    move v2, v6

    move v6, v3

    move v3, v12

    move v12, v4

    move v4, v13

    move v13, v5

    move/from16 v5, v19

    move/from16 v19, v9

    move/from16 v18, v13

    const/4 v13, 0x0

    move v9, v6

    move-object/from16 v6, v20

    .line 911
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 916
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedSubtitleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 917
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_7
    move v12, v4

    move/from16 v18, v5

    move/from16 v21, v7

    move/from16 v19, v9

    const/4 v13, 0x0

    move v9, v3

    .line 921
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 922
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 923
    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleScale:F

    cmpl-float v2, v1, v17

    if-eqz v2, :cond_8

    .line 924
    invoke-virtual {v8, v1, v1, v11, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_8
    if-eqz v16, :cond_9

    .line 929
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTexture:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v11, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v1, v7

    move/from16 v23, v21

    goto/16 :goto_c

    .line 931
    :cond_9
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 932
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 933
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    .line 934
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 935
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v11

    const/high16 v3, 0x41c00000    # 24.0f

    add-float/2addr v2, v3

    if-eqz v14, :cond_a

    .line 936
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float v3, v3, v20

    invoke-static {v3, v13}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_5

    :cond_a
    move v3, v2

    :goto_5
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    add-float v3, v3, v20

    .line 937
    iput v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncRightX:F

    .line 938
    iget v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleY:F

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    add-float/2addr v5, v3

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x43a50000    # 330.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    .line 939
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    iput v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    add-float v2, v2, v20

    .line 940
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    .line 941
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move-object/from16 v22, v6

    move v6, v9

    move/from16 v24, v7

    move/from16 v23, v21

    move-object/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    move/from16 v24, v7

    move/from16 v23, v21

    if-eqz v14, :cond_c

    .line 944
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v2, v2, v20

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_6

    :cond_c
    move v2, v11

    :goto_6
    iput v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    add-float v2, v2, v20

    .line 946
    iput v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncRightX:F

    .line 947
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    iput v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    .line 948
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    .line 949
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v14, :cond_d

    iget v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    move v5, v1

    goto :goto_7

    :cond_d
    move v5, v11

    :goto_7
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v1, v9

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float v6, v1, v6

    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 951
    :goto_8
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v14, :cond_e

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v1, v5

    sub-float v1, v1, v20

    invoke-static {v1, v13}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v5, v1

    goto :goto_9

    :cond_e
    move v5, v11

    :goto_9
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_f
    move/from16 v24, v7

    move/from16 v23, v21

    .line 954
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v14, :cond_10

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v1, v5

    move v5, v1

    goto :goto_a

    :cond_10
    move v5, v11

    :goto_a
    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move v6, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_b
    move/from16 v1, v24

    .line 957
    :goto_c
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 959
    iget-boolean v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_11

    .line 960
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitlePaint:Landroid/text/TextPaint;

    move/from16 v3, v23

    invoke-virtual {v8, v1, v15, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 966
    :cond_11
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 967
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12

    const/4 v14, 0x0

    .line 970
    :cond_12
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    cmpl-float v3, v2, v17

    if-eqz v3, :cond_14

    if-eqz v14, :cond_13

    .line 971
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    goto :goto_d

    :cond_13
    move v3, v10

    :goto_d
    invoke-virtual {v8, v2, v2, v3, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 974
    :cond_14
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCurrentDrawX:F

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    .line 975
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFirstLineDrawX:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    if-eqz v16, :cond_15

    .line 979
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextBlend:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 980
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 982
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextBlend:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 983
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v10, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 985
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 986
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCrossSectionTitleTexture:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v10, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_e
    move/from16 v0, v19

    goto/16 :goto_16

    .line 989
    :cond_15
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v5, v4, v3

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_16

    if-eqz v14, :cond_16

    sub-int/2addr v4, v3

    .line 990
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->control_app_bar_ar_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    :cond_16
    if-eqz v14, :cond_17

    .line 992
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    int-to-float v3, v4

    sub-float/2addr v3, v1

    goto :goto_f

    :cond_17
    move v3, v2

    :goto_f
    invoke-virtual {v8, v3, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 993
    iput v12, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTempY:F

    .line 995
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextBlend:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedTextColor()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    if-nez v14, :cond_18

    .line 997
    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_18
    if-eqz v14, :cond_19

    .line 1000
    iget v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedDrawX:F

    iget-object v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    add-float/2addr v2, v1

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_10

    :cond_19
    sub-float v2, v10, v2

    :goto_10
    invoke-virtual {v8, v2, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1003
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1a

    if-eqz v14, :cond_1a

    move/from16 v9, v18

    goto :goto_12

    .line 1006
    :cond_1a
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextBlend:F

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentCollapsedTextColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1007
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v14, :cond_1b

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    int-to-float v5, v6

    sub-float/2addr v5, v1

    goto :goto_11

    :cond_1b
    move v5, v13

    :goto_11
    move/from16 v9, v18

    neg-float v1, v9

    iget v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float v6, v1, v6

    iget-object v7, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 1012
    :goto_12
    iget-object v1, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDrawCollapsed:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2026"

    .line 1013
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1014
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_1c
    const/4 v3, 0x0

    .line 1017
    :goto_13
    iget-object v2, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentExpandedTextColor()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v2, 0x0

    .line 1018
    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_1d

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v4

    move v3, v4

    goto :goto_14

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_14
    if-eqz v14, :cond_1e

    iget-object v4, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    int-to-float v4, v5

    iget-object v5, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 1019
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    sub-float/2addr v4, v5

    goto :goto_15

    :cond_1e
    move v4, v13

    :goto_15
    neg-float v5, v9

    iget v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mScale:F

    div-float/2addr v5, v6

    iget-object v6, v0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    .line 1018
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_e

    :cond_1f
    move v0, v9

    .line 1025
    :goto_16
    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCurrentCollapsedSubtitleColor()I
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getCurrentColor(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public getCurrentExpandedTextColor()I
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    if-eqz v0, :cond_0

    .line 693
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public getExpandedSubtitleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1321
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1453
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 452
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    return p0
.end method

.method public getSubtitleLocationX()F
    .locals 2

    .line 1492
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleX:F

    iget-boolean v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_margin_space4:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public getSyncBottomLocation()F
    .locals 0

    .line 1523
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncBottomY:F

    return p0
.end method

.method public getSyncColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1325
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSyncLeftLocation()F
    .locals 0

    .line 1511
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncLeftX:F

    return p0
.end method

.method public getSyncRightLocation()F
    .locals 0

    .line 1515
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncRightX:F

    return p0
.end method

.method public getSyncTopLocation()F
    .locals 0

    .line 1519
    iget p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncTopY:F

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isExistSyncCloud()Z
    .locals 0

    .line 1506
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method final isStateful()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_2

    .line 447
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBoundsChanged()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawTitle:Z

    return-void
.end method

.method public recalculate()V
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateBaseOffsets()V

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setAppbarMargin(IIII)V
    .locals 0

    .line 1029
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginLeft:I

    .line 1030
    iput p2, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginRight:I

    .line 1032
    iput p4, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mAppbarMarginBottom:I

    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 217
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 218
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method public setCollapsedSubtitleAppearance(I)V
    .locals 3

    .line 1378
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 1380
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1381
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 1383
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 1384
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleSize:F

    .line 1386
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 1387
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    .line 1389
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDx:F

    .line 1390
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowDy:F

    .line 1391
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleShadowRadius:F

    .line 1392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1393
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleTypeface:Landroid/graphics/Typeface;

    .line 1395
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 580
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->collapsedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 581
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    .line 239
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 240
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextGravity:I

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleAppearance(I)V
    .locals 3

    .line 250
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 252
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 253
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 255
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 256
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextSize:F

    .line 258
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 259
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowColor:Landroid/content/res/ColorStateList;

    .line 261
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDx:F

    .line 262
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowDy:F

    .line 263
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTitleShadowRadius:F

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTypeface:Landroid/graphics/Typeface;

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 0

    .line 1071
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawLine:Z

    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mBoundsChanged:Z

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->onBoundsChanged()V

    :cond_0
    return-void
.end method

.method public setExpandedSubtitleAppearance(I)V
    .locals 3

    .line 1358
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 1359
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 1360
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 1362
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 1363
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleSize:F

    .line 1365
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 1366
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowColor:Landroid/content/res/ColorStateList;

    .line 1368
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDx:F

    .line 1369
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowDy:F

    .line 1370
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleShadowRadius:F

    .line 1371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1372
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleTypeface:Landroid/graphics/Typeface;

    .line 1374
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 591
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->expandedSubtitleColor:Landroid/content/res/ColorStateList;

    .line 592
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    .line 228
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    .line 229
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextGravity:I

    .line 230
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTitleAppearance(I)V
    .locals 3

    .line 273
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mView:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 274
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 275
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 277
    :cond_0
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 278
    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextSize:F

    .line 280
    :cond_1
    iget-object v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 281
    iput-object v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowColor:Landroid/content/res/ColorStateList;

    .line 283
    :cond_2
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDx:F

    .line 284
    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput v1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowDy:F

    .line 285
    iget v0, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTitleShadowRadius:F

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTypeface:Landroid/graphics/Typeface;

    .line 291
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setExpandedTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 426
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 428
    iget v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 429
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mExpandedFraction:F

    .line 430
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    .line 1496
    iput-boolean v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    .line 1497
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 1498
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setInsetImage(Z)V
    .locals 0

    .line 1488
    iput-boolean p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mInsetSubtitleImage:Z

    return-void
.end method

.method public setMenuMargin(I)V
    .locals 0

    .line 1527
    iput p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mMenuMargin:I

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mState:[I

    .line 437
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1405
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 1406
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->subtitleToDraw:Ljava/lang/CharSequence;

    .line 1407
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method public setSyncTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 202
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->syncColorList:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextSizeInterpolator:Landroid/animation/TimeInterpolator;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTitle:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 1301
    iput-object p1, p0, Lcom/google/android/material/internal/MultiCollapsingHelper;->mTextToDraw:Ljava/lang/CharSequence;

    .line 1302
    invoke-direct {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->clearTexture()V

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    :cond_1
    return-void
.end method
