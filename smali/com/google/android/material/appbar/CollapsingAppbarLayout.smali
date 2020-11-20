.class public Lcom/google/android/material/appbar/CollapsingAppbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingAppbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;,
        Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAYLT_RES_STYLE:I


# instance fields
.field private appbar:Lcom/google/android/material/appbar/Appbar;

.field final collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

.field private collapsingTitleEnabled:Z

.field private contentScrim:Landroid/graphics/drawable/Drawable;

.field currentOffset:I

.field private drawCollapsingTitle:Z

.field private dummyView:Landroid/view/View;

.field private expandedMarginBottom:I

.field private expandedMarginEnd:I

.field private expandedMarginStart:I

.field private expandedMarginTop:I

.field private isOverFling:Z

.field lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private final mAppbarHeight:I

.field private mCollapsed:Z

.field private mCollapsedSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTitleTextColor:Landroid/content/res/ColorStateList;

.field private mDisableCollapsed:Z

.field private mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

.field private mExpandSubtitleTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTitleTextColor:Landroid/content/res/ColorStateList;

.field private mPrepareDraw:Z

.field private mStillDisScroll:Z

.field private mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

.field private mSyncText:Ljava/lang/CharSequence;

.field private menuMargin:I

.field private menuToolbar:Landroidx/appcompat/widget/Toolbar;

.field private minHeight:I

.field private onCollapsedSyncListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

.field private onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

.field private onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private refreshTitlebar:Z

.field private scrimAlpha:I

.field private scrimAnimationDuration:J

.field private scrimAnimator:Landroid/animation/ValueAnimator;

.field private scrimVisibleHeightTrigger:I

.field private scrimsAreShown:Z

.field statusBarScrim:Landroid/graphics/drawable/Drawable;

.field private syncSubtitile:Ljava/lang/CharSequence;

.field private titlebarDirectChild:Landroid/view/View;

.field private final tmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_CollapsingAppbarLayout:I

    sput v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->DEFAYLT_RES_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 131
    sget v0, Lcom/google/android/material/R$attr;->collapsingAppbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 96
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 111
    iput-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    .line 114
    iput-boolean v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    .line 136
    new-instance v3, Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-direct {v3, p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    iput-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    .line 137
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    sget-object v7, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout:[I

    sget v9, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->DEFAYLT_RES_STYLE:I

    new-array v10, v2, [I

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 140
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    .line 148
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 147
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTextGravity(I)V

    .line 151
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    .line 152
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 151
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTextGravity(I)V

    .line 156
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_drawLineEnabled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setDrawLine(Z)V

    .line 158
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMargin:I

    .line 162
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 165
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 166
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 167
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedAppbarHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    .line 172
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginStart:I

    .line 174
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    .line 176
    :cond_1
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 177
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginEnd:I

    .line 178
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    .line 180
    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 181
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginTop:I

    .line 182
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    .line 184
    :cond_3
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 185
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleMarginBottom:I

    .line 186
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    .line 189
    :cond_4
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_titleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    .line 190
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_disableCollapsed:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    .line 192
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_insetSubtitleIconFlag:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isInsetSubtitleImage(Z)V

    .line 194
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_MultiCollapsingTitle_ExpandedTitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    .line 200
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    .line 204
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 205
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextAppearance:I

    .line 206
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 205
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleAppearance(I)V

    .line 208
    :cond_5
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 209
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextAppearance:I

    .line 210
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 209
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleAppearance(I)V

    .line 212
    :cond_6
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 213
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mExpandedTitleTextColor:Landroid/content/res/ColorStateList;

    .line 214
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 216
    :cond_7
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 217
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedTitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsedTitleTextColor:Landroid/content/res/ColorStateList;

    .line 218
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_8
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 221
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mExpandSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 222
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 224
    :cond_9
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 225
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsedSubtitleTextColor:Landroid/content/res/ColorStateList;

    .line 226
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p3, p2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V

    .line 230
    :cond_a
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_MultiCollapsingTitle_ExpandedSubtitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    .line 232
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Subtitle:I

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    .line 236
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 237
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_expandedSubtitleTextAppearance:I

    .line 238
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 237
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleAppearance(I)V

    .line 240
    :cond_b
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 241
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_collapsedSubtitleTextAppearance:I

    .line 242
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 241
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleAppearance(I)V

    .line 245
    :cond_c
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitleIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_subtitleIcon:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 248
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawableToSubtitleBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 249
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitleImage(Landroid/graphics/Bitmap;)V

    .line 253
    :cond_d
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_scrimVisibleHeightTrigger:I

    .line 254
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    .line 256
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_scrimAnimationDuration:I

    const/16 p3, 0x1a9

    .line 257
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    .line 261
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_contentScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 262
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_statusBarScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 265
    sget p2, Lcom/google/android/material/R$styleable;->CollapsingAppbarLayout_android_minHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    if-lez p2, :cond_e

    .line 267
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 270
    :cond_e
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_f

    .line 271
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 274
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 278
    new-instance p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$1;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/material/appbar/CollapsingAppbarLayout;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mStillDisScroll:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onCollapsedSyncListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return p0
.end method

.method static synthetic access$902(Lcom/google/android/material/appbar/CollapsingAppbarLayout;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    return p1
.end method

.method private animateScrim(I)V
    .locals 4

    .line 874
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 875
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 876
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    .line 877
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 878
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 882
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$3;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 889
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 892
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 893
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private ensureTitlebar()V
    .locals 6

    .line 479
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 485
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 499
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 500
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 501
    instance-of v5, v4, Lcom/google/android/material/appbar/Appbar;

    if-eqz v5, :cond_1

    .line 502
    check-cast v4, Lcom/google/android/material/appbar/Appbar;

    const/4 v2, 0x1

    .line 503
    invoke-virtual {v4, v2}, Lcom/google/android/material/appbar/Appbar;->limitDividerShown(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    .line 507
    :goto_1
    iput-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 510
    :cond_3
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v2, :cond_6

    .line 512
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_5

    .line 513
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 514
    instance-of v5, v4, Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_4

    .line 515
    move-object v0, v4

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 519
    :cond_5
    :goto_3
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 522
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateDummyView()V

    .line 523
    iput-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->refreshTitlebar:Z

    return-void
.end method

.method private static getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 740
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 741
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 742
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 743
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 745
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method static getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;
    .locals 2

    .line 749
    sget v0, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 751
    new-instance v0, Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    .line 752
    sget v1, Lcom/google/android/material/R$id;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private isTitlebarChild(Landroid/view/View;)Z
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private updateContentDescriptionFromTitle()V
    .locals 1

    .line 1701
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDummyView()V
    .locals 2

    .line 548
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 551
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 552
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 557
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1639
    instance-of p0, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 424
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 428
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v1, :cond_0

    .line 429
    iget-boolean v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 431
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz v0, :cond_2

    .line 437
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    if-eqz v0, :cond_2

    .line 438
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->draw(Landroid/graphics/Canvas;)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v0, :cond_4

    .line 447
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-lez v0, :cond_4

    .line 449
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 450
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 451
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isTitlebarChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 464
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 467
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 994
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 996
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 999
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1001
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1005
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    if-eqz v1, :cond_2

    .line 1008
    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 1012
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public drawableToSubtitleBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 291
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_icon_size_indicator:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 295
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 298
    :goto_0
    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 301
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;
    .locals 1

    .line 1644
    new-instance p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1649
    new-instance v0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 1654
    new-instance p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getFraction()F
    .locals 0

    .line 1575
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpansionFraction()F

    move-result p0

    return p0
.end method

.method final getMaxOffsetForPinChild(Landroid/view/View;)I
    .locals 2

    .line 1694
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v0

    .line 1695
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 1696
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->getLayoutTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1602
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimVisibleHeightTrigger:I

    if-ltz v0, :cond_0

    return v0

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1610
    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 1613
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1618
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isDisableCollapsed()Z
    .locals 0

    .line 1591
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    return p0
.end method

.method public isDisableScroll()Z
    .locals 0

    .line 1587
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mCollapsed:Z

    return p0
.end method

.method public isExistSynsText()Z
    .locals 0

    .line 1293
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->isExistSyncCloud()Z

    move-result p0

    return p0
.end method

.method public isInsetSubtitleImage(Z)V
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setInsetImage(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 309
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 311
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 312
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 314
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 316
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 319
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 322
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 383
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 386
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->onFractionChangeListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    if-eqz v0, :cond_2

    .line 390
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mEmptyPageView:Lcom/google/android/material/emptyview/EmptyPageView;

    .line 393
    :cond_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 591
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 593
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 595
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    .line 596
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 597
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 598
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 599
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 602
    iget-boolean v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez v4, :cond_0

    .line 603
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez p1, :cond_2

    .line 612
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 613
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->onViewLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 618
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    if-eqz p1, :cond_18

    .line 622
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->drawCollapsingTitle:Z

    if-eqz p1, :cond_18

    .line 626
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v0

    .line 629
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 630
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v2

    .line 631
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->dummyView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-static {p0, v3, v4}, Lcom/google/android/material/internal/DescendantOffsetUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 632
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-static {v3}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result v3

    .line 633
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->op_app_bar_height_with_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v1

    if-gt v3, v5, :cond_6

    .line 635
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_space3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 637
    :cond_6
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 638
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 639
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 640
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v5, :cond_c

    .line 641
    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v1, :cond_a

    const/4 v1, 0x2

    if-eq v5, v1, :cond_9

    .line 652
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "net.oneplus.weather"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 653
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_two_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 655
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_three_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 649
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_two_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 646
    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_one_menu_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_5

    .line 643
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 659
    :goto_5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    invoke-virtual {v1, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setMenuMargin(I)V

    .line 661
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->syncSubtitile:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 662
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/google/android/material/R$dimen;->op_app_bar_collapsing_title_limit_width:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    .line 664
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 665
    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 666
    invoke-virtual {v7}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginTop()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 667
    invoke-virtual {v8}, Lcom/google/android/material/appbar/Appbar;->getTitleMarginStart()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/2addr v8, v3

    .line 664
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedBounds(IIII)V

    .line 671
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_e

    .line 672
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 673
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    .line 674
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->menuMargin:I

    goto :goto_6

    :cond_e
    move v1, v0

    .line 678
    :goto_6
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/16 v3, 0x2a

    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 679
    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_f

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    goto :goto_7

    :cond_10
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 680
    invoke-virtual {v4}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_11

    iget v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    goto :goto_8

    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    :goto_7
    float-to-int v4, v4

    :goto_8
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 681
    invoke-virtual {v6}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v7, 0x8

    if-nez v6, :cond_12

    iget v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    goto :goto_9

    :cond_12
    iget v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginTop:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v6, v8

    :goto_9
    add-int/2addr v5, v6

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 682
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_13

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginStart:I

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    goto :goto_a

    :cond_14
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 683
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_15

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginEnd:I

    goto :goto_b

    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p1

    :goto_a
    float-to-int p1, p1

    :goto_b
    sub-int/2addr p4, p1

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    .line 684
    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_16

    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    goto :goto_c

    :cond_16
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->expandedMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_c
    sub-int/2addr p5, p1

    .line 678
    invoke-virtual {v2, v4, v5, p4, p5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedBounds(IIII)V

    .line 686
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 687
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_17

    .line 688
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 689
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, p3, p4, p5, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setAppbarMargin(IIII)V

    .line 692
    :cond_17
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->recalculate()V

    .line 697
    :cond_18
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz p1, :cond_1f

    .line 698
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTitleEnabled:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 700
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 701
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 702
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 704
    :cond_19
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/Appbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    new-instance p2, Landroid/text/SpannableString;

    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-direct {p2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 706
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$color;->op_control_accent_color_red_default:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 707
    iget-object p4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSyncText:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/16 p5, 0x11

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 708
    invoke-virtual {p2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 709
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 713
    :cond_1a
    :goto_d
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->titlebarDirectChild:Landroid/view/View;

    if-eqz p1, :cond_1d

    if-ne p1, p0, :cond_1b

    goto :goto_e

    .line 721
    :cond_1b
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_1c

    .line 722
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 724
    :cond_1c
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 714
    :cond_1d
    :goto_e
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p1, :cond_1e

    .line 715
    iget p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_f

    .line 717
    :cond_1e
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getHeightWithMargins(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 729
    :cond_1f
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    .line 732
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-nez p1, :cond_20

    .line 733
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_10
    if-ge v0, p1, :cond_20

    .line 734
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 568
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->minHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 569
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mDisableCollapsed:Z

    if-eqz p2, :cond_0

    .line 570
    iget p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mAppbarHeight:I

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 572
    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 575
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->ensureTitlebar()V

    .line 576
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 578
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 579
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-lez v0, :cond_3

    .line 584
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 585
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 472
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 473
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    .line 474
    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 1250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 1251
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    if-eqz v2, :cond_1

    .line 1253
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncLeftLocation()F

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncRightLocation()F

    move-result v2

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    .line 1254
    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncTopLocation()F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncBottomLocation()F

    move-result v0

    add-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mSubTitleClickListener:Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;

    invoke-interface {v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnSubTitleClickListener;->onClick()V

    .line 1264
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 398
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 405
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 406
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 411
    :cond_1
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public scrollTop(Z)V
    .locals 4

    .line 351
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mStillDisScroll:Z

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    .line 353
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getFraction()F

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x4

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    :goto_0
    if-gt p1, v1, :cond_1

    .line 356
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    int-to-float v3, p1

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    :cond_1
    return-void
.end method

.method public setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedSubtitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1202
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setCollapsedTitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 923
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 926
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 927
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 929
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1371
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedSubtitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleAlpha(I)V
    .locals 13

    .line 1103
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getSyncColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 1104
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1105
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1106
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1110
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 1111
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1112
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1113
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    mul-int/2addr v6, p1

    div-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1114
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1116
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v6, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1117
    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v6}, Lcom/google/android/material/internal/MultiCollapsingHelper;->getExpandedSubtitleColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 1118
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1119
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1120
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    mul-int/2addr p1, v8

    div-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1121
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1123
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, p1, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1124
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v9, v3, [[I

    const/4 v10, 0x1

    new-array v11, v10, [I

    const v12, 0x101009e

    aput v12, v11, v2

    aput-object v11, v9, v2

    new-array v11, v2, [I

    aput-object v11, v9, v10

    new-array v11, v3, [I

    .line 1128
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v11, v2

    aput v0, v11, v10

    invoke-direct {v5, v9, v11}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1124
    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSyncTextColor(Landroid/content/res/ColorStateList;)V

    .line 1131
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v10, [I

    aput v12, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v10

    new-array v4, v3, [I

    .line 1135
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v1, v4, v10

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1131
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1138
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v10, [I

    aput v12, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v10

    new-array v4, v3, [I

    .line 1142
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v6, v4, v10

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1138
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1145
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v4, v10, [I

    aput v12, v4, v2

    aput-object v4, v0, v2

    new-array v4, v2, [I

    aput-object v4, v0, v10

    new-array v4, v3, [I

    .line 1149
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    aput v5, v4, v2

    aput v1, v4, v10

    invoke-direct {p1, v0, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1145
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 1152
    new-instance p1, Landroid/content/res/ColorStateList;

    new-array v0, v3, [[I

    new-array v1, v10, [I

    aput v12, v1, v2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    aput-object v1, v0, v10

    new-array v1, v3, [I

    .line 1156
    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    aput v6, v1, v10

    invoke-direct {p1, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1152
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setCollapsedSubtitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1353
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpandedTitleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOverFling(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->isOverFling:Z

    return-void
.end method

.method public setPrepareDraw(Z)V
    .locals 0

    .line 1433
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->mPrepareDraw:Z

    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    .line 897
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    if-eq p1, v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->appbar:Lcom/google/android/material/appbar/Appbar;

    if-eqz v0, :cond_0

    .line 900
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 902
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    .line 903
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 850
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimsShown(ZZ)V

    return-void
.end method

.method public setScrimsShown(ZZ)V
    .locals 2

    .line 863
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimsAreShown:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 865
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->animateScrim(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 867
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimAlpha(I)V

    .line 869
    :goto_2
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimsAreShown:Z

    :cond_3
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 977
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 979
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 980
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 982
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 983
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 982
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 984
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 985
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 986
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->scrimAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 988
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 801
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitleImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setImageDrawable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 765
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateContentDescriptionFromTitle()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1023
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1026
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1030
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method final updateScrimVisibility()V
    .locals 2

    .line 1688
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1689
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1018
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->contentScrim:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
