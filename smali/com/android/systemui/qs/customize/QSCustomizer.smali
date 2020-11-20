.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private mAppbar:Lcom/google/android/material/appbar/Appbar;

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Landroid/view/View;

.field private mCustomizing:Z

.field private mDivider:Landroid/view/View;

.field private mDoneButton:Landroid/widget/Button;

.field private mDragLabel:Landroid/widget/TextView;

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsShowingNavBackdrop:Z

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mResetButton:Landroid/widget/Button;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUpperIndicatorContainer:Landroid/widget/LinearLayout;

.field private mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    .line 148
    new-instance p7, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getEditTheme()I

    move-result v0

    invoke-direct {p7, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p7, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    new-instance p2, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {p2}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 622
    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 635
    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 666
    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p7, Lcom/android/systemui/R$layout;->qs_customize_panel_content2:I

    invoke-virtual {p2, p7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 155
    sget p2, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/view/View;

    .line 158
    new-instance p2, Lcom/android/systemui/qs/QSDetailClipper;

    sget p7, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, p7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    invoke-direct {p2, p7}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 159
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 160
    iget-object p7, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p7

    const v0, 0x101030b

    const/4 v1, 0x1

    invoke-virtual {p7, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 181
    sget p2, Lcom/android/systemui/R$id;->op_qs_edit_done:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/Button;

    .line 182
    new-instance p7, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$UrjF3azOC-uGdbn9DsJsA7X1eQo;

    invoke-direct {p7, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$UrjF3azOC-uGdbn9DsJsA7X1eQo;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p2, p7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget p2, Lcom/android/systemui/R$id;->op_qs_edit_reset:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/Button;

    .line 184
    new-instance p7, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$C43yoxQJp4nZ_wK4zrbv9dy209I;

    invoke-direct {p7, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$C43yoxQJp4nZ_wK4zrbv9dy209I;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p2, p7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget p2, Lcom/android/systemui/R$id;->op_qs_edit_appbar:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/Appbar;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mAppbar:Lcom/google/android/material/appbar/Appbar;

    .line 189
    invoke-virtual {p2, v1}, Lcom/google/android/material/appbar/Appbar;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mAppbar:Lcom/google/android/material/appbar/Appbar;

    new-instance p7, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$Z7CnafcZQZawgCocdnzpbi07dHM;

    invoke-direct {p7, p0}, Lcom/android/systemui/qs/customize/-$$Lambda$QSCustomizer$Z7CnafcZQZawgCocdnzpbi07dHM;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p2, p7}, Lcom/google/android/material/appbar/Appbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    sget p2, Lcom/android/systemui/R$id;->upperPages:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 217
    sget p2, Lcom/android/systemui/R$id;->lowerPages:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/QSEditViewPager;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 219
    sget p2, Lcom/android/systemui/R$id;->upperIndicatorContainer:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperIndicatorContainer:Landroid/widget/LinearLayout;

    .line 221
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    sget p7, Lcom/android/systemui/R$id;->upperIndicator:I

    invoke-virtual {p0, p7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 222
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    sget p7, Lcom/android/systemui/R$id;->lowerIndicator:I

    invoke-virtual {p0, p7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p2, p7}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 223
    sget p2, Lcom/android/systemui/R$id;->dragLabel:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    .line 224
    new-instance p7, Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p7, p1, v0, v1, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V

    iput-object p7, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    .line 225
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p1

    invoke-virtual {p7, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    .line 226
    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 227
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p6, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    .line 230
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 231
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 232
    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 236
    sget p1, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDivider:Landroid/view/View;

    .line 239
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    new-instance p2, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$EmptyClickListener;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/QSEditPageManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x167

    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void
.end method

.method private queryTiles()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultSpecs(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomizing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSCustomizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 536
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 567
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 5

    .line 379
    sget v0, Lcom/android/systemui/R$id;->nav_bar_background:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 386
    const-class v1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService;

    .line 387
    invoke-virtual {v1}, Lcom/android/systemui/recents/OverviewProxyService;->getNavBarMode()I

    move-result v1

    .line 388
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v3, 0x0

    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 389
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 393
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    return-void
.end method

.method private updateNavColors()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setQsCustomizing(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 6

    .line 470
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 471
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v2, :cond_2

    const-string v2, "QSCustomizer"

    const-string v3, "hide edit UI"

    .line 473
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 476
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 483
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    .line 486
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 487
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    if-eqz v0, :cond_1

    .line 490
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 492
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    .line 501
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->destroyTiles()V

    :cond_2
    return-void
.end method

.method public hideNoAnimation()V
    .locals 2

    .line 508
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 515
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 516
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    const/16 v1, 0x8

    .line 517
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 522
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->destroyTiles()V

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 542
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return p0
.end method

.method public synthetic lambda$new$0$QSCustomizer(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$QSCustomizer(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$2$QSCustomizer(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 257
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 354
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    .line 360
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 363
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->recalcEditPage()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->destroyTiles()V

    .line 270
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 283
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateThemeColor()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 548
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_RESET:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 551
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 278
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setLayoutRTL(Z)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "qs_customizing"

    .line 594
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 596
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    if-eq p1, v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customizing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mCustomizing "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSCustomizer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 602
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 603
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 587
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 590
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-void
.end method

.method public setEditLocation(II)V
    .locals 2

    .line 617
    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 618
    aget v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 619
    aget p1, v0, p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    .line 403
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mPageManager:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method

.method public show(II)V
    .locals 3

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const-string v0, "QSCustomizer"

    const-string/jumbo v1, "show edit UI"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget v0, Lcom/android/systemui/R$id;->customize_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 428
    aget v2, v0, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    const/4 p1, 0x1

    .line 429
    aget v0, v0, p1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 430
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 431
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 432
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 434
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 437
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 438
    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method public showImmediately()V
    .locals 3

    .line 448
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->cancelAnimator()V

    .line 451
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetailClipper;->showBackground()V

    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 454
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors()V

    :cond_0
    return-void
.end method

.method protected updateThemeColor()V
    .locals 6

    const/16 v0, 0x9

    .line 294
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    const/16 v1, 0xa

    .line 295
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    const/4 v1, 0x1

    .line 296
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const/4 v2, 0x2

    .line 298
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    const/16 v4, 0xf

    .line 299
    invoke-static {v4}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v4

    .line 303
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v5

    if-ne v5, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x64

    .line 305
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    :goto_0
    const/16 v2, 0xe

    .line 307
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 329
    sget v5, Lcom/android/systemui/R$id;->op_qs_edit_appbar:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 330
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 331
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 332
    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 335
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 338
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContainer:Landroid/view/View;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mLowerPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mUpperPages:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 342
    sget v1, Lcom/android/systemui/R$id;->toolbar_panel:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDragLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
