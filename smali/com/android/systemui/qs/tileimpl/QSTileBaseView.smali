.class public Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private final mBg:Landroid/widget/ImageView;

.field private mCircleColor:I

.field private final mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

.field protected mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private final mIconFrame:Landroid/widget/FrameLayout;

.field private final mLocInScreen:[I

.field private mLottieUtils:Lcom/oneplus/util/OpLottieUtils;

.field protected mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mShowRippleEffect:Z

.field private mStrokeWidthActive:F

.field private mStrokeWidthInactive:F

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 5

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 63
    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 p3, 0x1

    .line 71
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b5

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b6

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 102
    new-instance v0, Landroid/graphics/Path;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 105
    new-instance v1, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 106
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v1, 0x0

    .line 107
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 111
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v0, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 116
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 121
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 124
    instance-of v0, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 125
    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 127
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 128
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1010435

    .line 130
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    const p2, 0x1010212

    .line 132
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    .line 131
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    const p2, 0x1010038

    .line 133
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    .line 135
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 139
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieUtils:Lcom/oneplus/util/OpLottieUtils;

    if-nez p1, :cond_1

    .line 143
    new-instance p1, Lcom/oneplus/util/OpLottieUtils;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-direct {p1, p2, p3, v0}, Lcom/oneplus/util/OpLottieUtils;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSIconView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieUtils:Lcom/oneplus/util/OpLottieUtils;

    :cond_1
    return-void
.end method

.method private getCircleColor(I)I
    .locals 0

    .line 361
    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getCircleColorForState(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleStateChanged$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 266
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 265
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static synthetic lambda$init$0(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 177
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    return-void
.end method

.method static synthetic lambda$init$1(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)V
    .locals 0

    .line 177
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->secondaryClick()V

    return-void
.end method

.method static synthetic lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z
    .locals 0

    .line 178
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->longClick()V

    const/4 p0, 0x1

    return p0
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method private updateRippleSize()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 171
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 172
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method private updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    .line 223
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 228
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 238
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthActive:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 231
    :cond_2
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_3

    .line 232
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mStrokeWidthInactive:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 3

    .line 337
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    return v1

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    if-lt v0, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public getDetailY()I
    .locals 1

    .line 373
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 9

    .line 246
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateStrokeShapeWidth(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 247
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->getCircleColor(I)I

    move-result v0

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->animationsEnabled()Z

    move-result v1

    .line 253
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v1, :cond_1

    .line 260
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieUtils:Lcom/oneplus/util/OpLottieUtils;

    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7, p1, v1}, Lcom/oneplus/util/OpLottieUtils;->applyLottieAnimIfNeeded(Landroid/widget/FrameLayout;Lcom/android/systemui/plugins/qs/QSTile$State;Z)Z

    move-result v6

    if-nez v6, :cond_2

    new-array v6, v4, [I

    .line 263
    iget v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mCircleColor:I

    aput v7, v6, v3

    aput v0, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x0

    .line 264
    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 265
    new-instance v7, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$R4RxHhlQ5aUQCBgq0kdDEHJXn14;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileBaseView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 273
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v6, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    .line 282
    :cond_2
    :goto_1
    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_3

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleStateChanged: label="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", iconRes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", cirColor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QSTileBaseView"

    .line 283
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    .line 289
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_4

    move v3, v5

    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->setClickable(Z)V

    .line 290
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieUtils:Lcom/oneplus/util/OpLottieUtils;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/OpLottieUtils;->isNeedLottie(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 299
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    goto :goto_2

    .line 311
    :cond_6
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_9

    .line 312
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->switch_bar_on:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 306
    :cond_7
    instance-of v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v1, :cond_9

    .line 307
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->switch_bar_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 303
    :cond_8
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->tile_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, ", "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 322
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 325
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_3
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 326
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_c

    .line 327
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eq v0, p1, :cond_c

    .line 329
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    :cond_c
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    .line 177
    new-instance v0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$aVxKNvlJE7IFS8nVmOyLdAcByFA;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$W9w1scJAVZm5V6Q1VB4ZO5o3C8A;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic lambda$handleStateChanged$3$QSTileBaseView(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$handleStateChanged$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method protected newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101045c

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 155
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 396
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 404
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 409
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 411
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    .line 410
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 418
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 422
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    .line 423
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 191
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileBaseView$H;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLottieUtils:Lcom/oneplus/util/OpLottieUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/util/OpLottieUtils;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 390
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 367
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz p1, :cond_0

    .line 368
    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mShowRippleEffect:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", iconView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", tileState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->mTileState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 436
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method
