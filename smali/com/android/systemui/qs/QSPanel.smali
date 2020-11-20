.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessMirror:Landroid/view/View;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field protected mBrightnessView:Landroid/view/View;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mCachedSpecs:Ljava/lang/String;

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field protected mDatePanel:Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mDivider:Landroid/view/View;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field protected mExpanded:Z

.field protected mFooter:Landroid/view/View;

.field private mFooterMarginStartHorizontal:I

.field private mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHeaderContainer:Landroid/view/ViewGroup;

.field private mHorizontalContentContainer:Landroid/widget/LinearLayout;

.field private mHorizontalLinearLayout:Landroid/widget/LinearLayout;

.field private mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastOrientation:I

.field protected mListening:Z

.field protected final mMediaHost:Lcom/android/systemui/media/MediaHost;

.field private mMediaTotalBottomMargin:I

.field private mMediaVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMovableContentStartIndex:I

.field private mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field protected final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUsingHorizontalLayout:Z

.field protected mUsingMediaPlayer:Z

.field private mVisualMarginEnd:I

.field private mVisualMarginStart:I

.field private mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

.field protected mWidgetLayout:Landroid/view/View;

.field private mWidgetListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 3

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const-string p2, ""

    .line 115
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 122
    new-instance p2, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 123
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 p2, 0x1

    .line 155
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    const/4 v0, -0x1

    .line 180
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    .line 197
    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    .line 198
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->quick_settings_bottom_margin_media:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    .line 200
    iput-object p6, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 201
    new-instance v1, Lcom/android/systemui/qs/-$$Lambda$QSPanel$eQ8pVxxhUsNJKcJOLQN4uzlXkuA;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/-$$Lambda$QSPanel$eQ8pVxxhUsNJKcJOLQN4uzlXkuA;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    invoke-virtual {p6, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 205
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 206
    iput-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 207
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 208
    iput-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 209
    iput-object p7, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 211
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addViewsAboveTiles()V

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 217
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 218
    new-instance p3, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p3, p5}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    .line 219
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 220
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 221
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 223
    new-instance p3, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {p3, p5}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    .line 224
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 226
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 229
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p2, p4, p3, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 230
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p6, Lcom/android/systemui/R$dimen;->qqs_media_spacing:I

    invoke-virtual {p3, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 231
    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 232
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/16 p3, 0x10

    .line 233
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 234
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    iget-object p6, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p6, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 237
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->initMediaHostState()V

    .line 242
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->qs_page_indicator:I

    invoke-virtual {p1, p2, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PageIndicator;

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 244
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addBrightnessView()V

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addSecurityFooter()V

    .line 252
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of p2, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p2, :cond_1

    .line 253
    new-instance p2, Lcom/android/systemui/qs/QSTileRevealController;

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p2, p3, p0, p1}, Lcom/android/systemui/qs/QSTileRevealController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object p0
.end method

.method private fireScanStateChanged(Z)V
    .locals 0

    .line 1226
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 1227
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    .line 1214
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 1215
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 0

    .line 1220
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    .line 1221
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    return-object p0
.end method

.method private getTilesSpecs()Ljava/lang/String;
    .locals 1

    .line 963
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$EbHBtJlVwGzmqefWXJDEYuyGlcQ;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSPanel$EbHBtJlVwGzmqefWXJDEYuyGlcQ;

    .line 964
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 965
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1184
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_1

    .line 1185
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 3

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1174
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_2

    return-void

    .line 1177
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 1178
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1179
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1180
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    return-void
.end method

.method static synthetic lambda$getTilesSpecs$1(Lcom/android/systemui/qs/QSPanel$TileRecord;)Ljava/lang/String;
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private logTiles()V
    .locals 5

    const/4 v0, 0x0

    .line 1206
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 1208
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x1

    .line 1209
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1208
    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldUseHorizontalLayout()Z
    .locals 1

    .line 850
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 798
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    goto :goto_0

    :cond_0
    move v1, v0

    .line 801
    :goto_0
    instance-of v2, p1, Lcom/android/systemui/qs/QuickQSPanel;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v1, v3

    .line 807
    :cond_1
    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/2addr v1, v3

    .line 810
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p2, :cond_3

    .line 811
    invoke-virtual {p2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p2

    .line 812
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 813
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 815
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v0, 0x3fcccccd    # 1.6f

    .line 816
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 817
    invoke-direct {p0, p2, v4, v3}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 824
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x2

    .line 827
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/2addr v1, v3

    .line 830
    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 835
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :cond_4
    return-void
.end method

.method private switchTileLayout(Z)Z
    .locals 8

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 717
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 718
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 724
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v3

    .line 725
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useHorizontalLayout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", force="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QSPanel"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v0, :cond_5

    .line 729
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast p1, Landroid/view/View;

    :goto_2
    if-eqz v0, :cond_6

    .line 730
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    :goto_3
    if-eqz v0, :cond_7

    .line 731
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    goto :goto_4

    :cond_7
    move-object v4, p0

    :goto_4
    if-eqz v0, :cond_8

    .line 732
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    goto :goto_5

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    :goto_5
    if-eqz v1, :cond_a

    .line 733
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-ne v6, v7, :cond_9

    if-eq v1, v6, :cond_a

    .line 738
    :cond_9
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 740
    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 741
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/qs/QSPanel;->switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V

    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->reAttachMediaHost()V

    .line 743
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p1, :cond_b

    .line 744
    invoke-interface {p1, v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 745
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 746
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 747
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_6

    .line 750
    :cond_b
    iput-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 752
    instance-of p1, v5, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p1, :cond_c

    .line 753
    move-object p1, v5

    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 756
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 757
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v5, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->needsDynamicRowsAndColumns()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    if-eqz v0, :cond_e

    const/4 p1, 0x2

    goto :goto_7

    :cond_e
    move p1, v1

    .line 759
    :goto_7
    invoke-interface {v5, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    if-eqz v0, :cond_f

    const/4 p1, 0x3

    goto :goto_8

    :cond_f
    const/16 p1, 0x64

    .line 761
    :goto_8
    invoke-interface {v5, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMaxColumns(I)Z

    .line 763
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    .line 764
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    .line 766
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaDisappearParameters()V

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins()V

    .line 768
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateHorizontalLinearLayoutMargins()V

    .line 769
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    return v1
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 840
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-ne p0, p2, :cond_0

    .line 841
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, p3, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 843
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 845
    :cond_1
    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private updateBrightnessViewParams()V
    .locals 2

    .line 1504
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1507
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->brightness_mirror_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1509
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 1510
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1511
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1513
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->forceLayout()V

    return-void
.end method

.method private updateDividerMargin()V
    .locals 3

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1335
    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateFooterMargin()V
    .locals 3

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1294
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1295
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1298
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method private updateHorizontalLinearLayoutMargins()V
    .locals 3

    .line 776
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 778
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 779
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateMediaDisappearParameters()V
    .locals 6

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 344
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 348
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 350
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v1, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    const v1, 0x3f19999a    # 0.6f

    .line 351
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 356
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 358
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const v4, 0x3f866666    # 1.05f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 359
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    .line 361
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setFadeStartPosition(F)V

    .line 362
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearStart(F)V

    .line 363
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 609
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method private updateTileLayoutMargins()V
    .locals 3

    .line 1326
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 1327
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    return-void
.end method

.method private updateTileLayoutMargins(II)V
    .locals 0

    .line 1320
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginStart:I

    .line 1321
    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mVisualMarginEnd:I

    .line 1322
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins()V

    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    .line 491
    invoke-static {p2, p0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected addBrightnessView()V
    .locals 8

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->quick_settings_brightness_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessViewParams()V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSeekBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 308
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v1, Lcom/android/systemui/R$id;->brightness_level:I

    .line 309
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->brightness_icon:I

    .line 310
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    sget v1, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 311
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/settings/ToggleSlider;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-void
.end method

.method protected addSecurityFooter()V
    .locals 2

    .line 268
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 270
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter;->setOpQSWidgetAdapter(Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;)V

    :cond_0
    return-void
.end method

.method protected addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
    .locals 1

    .line 1067
    new-instance v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 1068
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 1069
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 1070
    new-instance p1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 1108
    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 1109
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 1110
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 1111
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 1112
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getTilesSpecs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 1115
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_0

    .line 1116
    invoke-interface {p0, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    :cond_0
    return-object v0
.end method

.method protected addViewsAboveTiles()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_qs_date_time_panel_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDatePanel:Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    .line 287
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_qs_widget_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetLayout:Landroid/view/View;

    .line 291
    sget v1, Lcom/android/systemui/R$id;->op_qs_widget_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 292
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 293
    new-instance v0, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1232
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1235
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1236
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1149
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1055
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected createHorizontalTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    return-object p0
.end method

.method protected createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_paged_tile_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRegularTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method protected createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    return-object p0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1043
    iget-object p0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Tile records:"

    .line 1411
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1413
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_0

    const-string v1, "    "

    .line 1414
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object p0
.end method

.method public getDivider()Landroid/view/View;
    .locals 0

    .line 1262
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QSPanel"

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getMediaHost()Lcom/android/systemui/media/MediaHost;
    .locals 0

    .line 1379
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    return-object p0
.end method

.method public getOpQSWidgetAdapter()Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;
    .locals 0

    .line 1498
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    return-object p0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object p0
.end method

.method public getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    return-object p0
.end method

.method public getSecurityFooter()Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    .line 1257
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 1243
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    .line 1247
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1248
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-ne v1, p1, :cond_0

    .line 1249
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2

    .line 1157
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_0

    .line 1158
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1163
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 1164
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 1166
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    :goto_1
    return-void
.end method

.method protected initMediaHostState()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaDisappearParameters()V

    .line 333
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    return-void
.end method

.method public isExpanded()Z
    .locals 0

    .line 946
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method public isShowingCustomize()Z
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$new$0$QSPanel(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method protected needsDynamicRowsAndColumns()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 429
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 430
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qs_show_brightness"

    .line 431
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 442
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->setListening(Z)V

    :cond_2
    return-void
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .locals 0

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 685
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 686
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 691
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    .line 693
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    if-eq p1, v0, :cond_1

    .line 694
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mLastOrientation:I

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    .line 698
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessViewParams()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 450
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 455
    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 458
    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 462
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 464
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetAdapter:Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;

    if-eqz v0, :cond_4

    .line 468
    invoke-virtual {v0, v1}, Lcom/oneplus/systemui/qs/OpQSWidgetAdapter;->setListening(Z)V

    .line 471
    :cond_4
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 704
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 705
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    .line 706
    sget v0, Lcom/android/systemui/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    const/4 v0, 0x1

    .line 707
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v1, :cond_0

    .line 372
    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    :cond_1
    const/16 v0, 0x2710

    .line 383
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    rsub-int p2, p2, 0x2710

    const/high16 v1, 0x40000000    # 2.0f

    .line 389
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setExcessHeight(I)V

    move p2, v0

    .line 392
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 400
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 403
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 405
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    .line 406
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 407
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onMediaVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout()Z

    .line 262
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 263
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "qs_show_brightness"

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 486
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 3

    .line 495
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 499
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    .line 1051
    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected reAttachMediaHost()V
    .locals 4

    .line 856
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 861
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 862
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_7

    if-eqz v3, :cond_2

    .line 865
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 867
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 868
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    .line 869
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    .line 870
    :goto_1
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v0, :cond_4

    const v3, 0x3fb33333    # 1.4f

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 875
    :goto_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v0, :cond_5

    .line 880
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 881
    :cond_5
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    sub-int v2, v0, p0

    :cond_6
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_7
    return-void
.end method

.method public refreshAllTiles()V
    .locals 2

    const-string v0, "QSPanel"

    const-string v1, "refreshAllTiles"

    .line 991
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 996
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 998
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_2

    .line 999
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    :cond_2
    return-void
.end method

.method public setBrightnessListening(Z)V
    .locals 2

    .line 979
    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListeningBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 984
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_0

    .line 986
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    :goto_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 518
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 520
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    return-void
.end method

.method public setContentMargins(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1281
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    .line 1282
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    .line 1283
    invoke-direct {p0, p1, p1}, Lcom/android/systemui/qs/QSPanel;->updateTileLayoutMargins(II)V

    .line 1285
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins()V

    .line 1286
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateFooterMargin()V

    .line 1287
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateDividerMargin()V

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v0, :cond_0

    return-void

    .line 1190
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 1191
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1193
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 3

    .line 914
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpanded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(ZLjava/lang/String;)V

    .line 917
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 918
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, p1, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    .line 919
    check-cast p1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 921
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x6f

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 922
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_3

    .line 923
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 926
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 928
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hideNoAnimation()V

    return-void

    .line 931
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    goto :goto_0

    .line 934
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    :goto_0
    return-void
.end method

.method setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1198
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1199
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 1202
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 1

    .line 582
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 583
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 585
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 588
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p2, :cond_1

    .line 590
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p2, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_1
    return-void
.end method

.method public setIsExpanding(Z)V
    .locals 0

    .line 1477
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_0

    .line 1478
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setIsExpanding(Z)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    .line 950
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 951
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListening: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 953
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 957
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz p1, :cond_2

    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    :cond_2
    return-void
.end method

.method public setListening(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 969
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 970
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p2, :cond_1

    .line 971
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    .line 975
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessListening(Z)V

    return-void
.end method

.method public setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1390
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaVisibilityChangedListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 1

    .line 940
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 941
    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    :cond_0
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->updateRevealedTiles(Ljava/util/Collection;)V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 1032
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 1033
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 1036
    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCachedSpecs:Ljava/lang/String;

    .line 1037
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 1038
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    .line 1063
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    .line 1020
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 5

    const/4 v0, 0x0

    .line 1004
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 1005
    aget v3, p3, v2

    .line 1006
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1008
    new-instance v4, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 1009
    iput-object p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 1010
    aget p2, p3, v0

    sub-int p2, v1, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 1011
    aget p2, p3, v2

    sub-int p2, v3, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 1013
    aput v1, p3, v0

    .line 1014
    aput v3, p3, v2

    .line 1016
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    :cond_0
    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 3

    const-string v0, "quick_edit"

    const-string v1, ""

    const-string v2, "1"

    .line 1125
    invoke-static {v0, v1, v2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method switchTileLayout()Z
    .locals 1

    const/4 v0, 0x0

    .line 711
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->switchTileLayout(Z)Z

    move-result p0

    return p0
.end method

.method public updateBrightnessMirror()V
    .locals 3

    .line 886
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 887
    sget v0, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 888
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 889
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 890
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 891
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    .line 897
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/BrightnessController;->setMirrorView(Landroid/view/View;)V

    .line 898
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSeekBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateThemeColor()V

    return-void
.end method

.method protected updateMargins(Landroid/view/View;II)V
    .locals 0

    .line 1372
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1373
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 1374
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 1375
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateMediaHostContentMargins()V
    .locals 3

    .line 1342
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_1

    .line 1351
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1353
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_control_margin_space4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1355
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_tile_layout_margin_side:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1359
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected updatePadding()V
    .locals 5

    .line 669
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 670
    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 671
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz v2, :cond_0

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    .line 679
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_panel_padding_bottom:I

    .line 680
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 677
    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public updateResources()V
    .locals 5

    const-string v0, "QSPanel"

    const-string/jumbo v1, "updateResources"

    .line 626
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_quick_tile_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 628
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_background_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 629
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_footer_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterMarginStartHorizontal:I

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    .line 651
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 653
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDatePanel:Lcom/oneplus/systemui/qs/OpQSDateTimePanelLayout;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    .line 654
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mWidgetLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    move v1, v3

    .line 657
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 661
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 663
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_5

    .line 664
    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_5
    return-void
.end method

.method public updateThemeColor()V
    .locals 9

    .line 532
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 534
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    :goto_0
    const/16 v1, 0xd

    .line 536
    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    const/16 v2, 0xa

    .line 537
    invoke-static {v2}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    const/16 v3, 0x9

    .line 538
    invoke-static {v3}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 539
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getThumbBackground()I

    move-result v4

    const/16 v5, 0xb

    .line 540
    invoke-static {v5}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v5

    .line 542
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 543
    sget v7, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/settings/ToggleSeekBar;

    .line 544
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 545
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 546
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 v7, 0x0

    .line 548
    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->brightness_level:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 551
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v7, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 553
    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 554
    sget v7, Lcom/android/systemui/R$id;->slider:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/settings/ToggleSeekBar;

    .line 555
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v8, Lcom/android/systemui/R$id;->brightness_mirror_frame:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 556
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 557
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 558
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->brightness_level:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirror:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->brightness_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 565
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p0, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->updateThemeColor()V

    :cond_2
    return-void
.end method

.method public updateWLBExpansion(F)V
    .locals 0

    .line 1484
    const-class p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->updateExpansionState(F)V

    return-void
.end method

.method public updateWLBHeaderExpansion(F)V
    .locals 0

    .line 1489
    const-class p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    if-eqz p0, :cond_0

    .line 1491
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->updateHeaderExpansion(F)V

    :cond_0
    return-void
.end method
