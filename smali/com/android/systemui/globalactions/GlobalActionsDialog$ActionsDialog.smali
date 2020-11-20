.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mControlsAvailable:Z

.field private mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

.field private mControlsView:Landroid/view/ViewGroup;

.field private final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

.field private mHadTopUi:Z

.field private mKeyguardShowing:Z

.field private mLockMessage:Landroid/widget/TextView;

.field mLockMessageContainer:Landroid/view/ViewGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private final mOnRotateCallback:Ljava/lang/Runnable;

.field private final mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

.field private mOverflowPopup:Landroid/widget/ListPopupWindow;

.field private final mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

.field private mPowerOptionsDialog:Landroid/app/Dialog;

.field private mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

.field private mScrimAlpha:F

.field private mShowing:Z

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mToken:Landroid/os/IBinder;

.field private final mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;ZLcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/model/SysUiState;Ljava/lang/Runnable;ZLcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;)V
    .locals 1

    .line 2252
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2220
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    .line 2253
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 2254
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 2255
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    .line 2256
    iput-object p14, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    .line 2257
    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2258
    iput-object p6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 2259
    iput-object p7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2260
    iput-object p8, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 2261
    iput-boolean p9, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsAvailable:Z

    .line 2262
    iput-object p10, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 2263
    iput-object p11, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 2264
    iput-object p12, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOnRotateCallback:Ljava/lang/Runnable;

    .line 2265
    iput-boolean p13, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    .line 2268
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    .line 2269
    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    .line 2271
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2272
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 p3, p3, 0x700

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/4 p2, -0x1

    .line 2275
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    const/4 p2, 0x2

    .line 2276
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    const p2, 0x10d0120

    .line 2277
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/16 p2, 0x7e4

    .line 2284
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 2285
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const p1, 0x104038c

    .line 2286
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 2288
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    .line 2289
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;
    .locals 0

    .line 2212
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Z
    .locals 0

    .line 2212
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->isShowingControls()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    .line 2212
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Landroid/content/Context;
    .locals 0

    .line 2212
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 0

    .line 2212
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showControls(Lcom/android/systemui/controls/ui/ControlsUiController;)V

    return-void
.end method

.method private completeDismiss()V
    .locals 4

    const/4 v0, 0x0

    .line 2597
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2598
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->resetOrientation()V

    .line 2599
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWallet()V

    const/4 v1, 0x1

    .line 2600
    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissOverflow(Z)V

    .line 2601
    invoke-direct {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPowerOptions(Z)V

    .line 2602
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/controls/ui/ControlsUiController;->hide()V

    .line 2603
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHadTopUi:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceHasTopUi(Z)V

    .line 2604
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    .line 2605
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const v2, 0x8000

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 2606
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2607
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private createPowerOverflowPopup()Landroid/widget/ListPopupWindow;
    .locals 4

    .line 2371
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->Control_ListPopupWindow:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;-><init>(Landroid/content/Context;Z)V

    .line 2376
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$GSOW7lWloqL925bXQQal4672K24;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$GSOW7lWloqL925bXQQal4672K24;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2378
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1VuhVwKc6qYSjn3u6ATHSsYFxYo;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1VuhVwKc6qYSjn3u6ATHSsYFxYo;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2380
    sget v1, Lcom/android/systemui/R$id;->global_actions_overflow_button:I

    .line 2381
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2382
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2383
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method private dismissForControlsActivity()V
    .locals 1

    .line 2582
    new-instance v0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$tKeLQ7hzV22pVlEDjA3Cdmt_GIQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$tKeLQ7hzV22pVlEDjA3Cdmt_GIQ;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWithAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissOverflow(Z)V
    .locals 0

    .line 2617
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowPopup:Landroid/widget/ListPopupWindow;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2619
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismissImmediate()V

    goto :goto_0

    .line 2621
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dismissPowerOptions(Z)V
    .locals 0

    .line 2627
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 2629
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2631
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private dismissWallet()V
    .locals 0

    .line 2611
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz p0, :cond_0

    .line 2612
    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDismissed()V

    :cond_0
    return-void
.end method

.method private fixNavBarClipping()V
    .locals 1

    const v0, 0x1020002

    .line 2450
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2451
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2452
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 2453
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 2454
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2455
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private initializeLayout()V
    .locals 3

    .line 2398
    sget v0, Lcom/android/systemui/R$layout;->global_actions_grid_v2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2399
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->fixNavBarClipping()V

    .line 2400
    sget v0, Lcom/android/systemui/R$id;->global_actions_controls:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    .line 2401
    sget v0, Lcom/android/systemui/R$id;->global_actions_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/MultiListLayout;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2403
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$RlAClCZGe730TLtdwZ5ScsEStKA;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$RlAClCZGe730TLtdwZ5ScsEStKA;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setOutsideTouchListener(Landroid/view/View$OnClickListener;)V

    .line 2404
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$NouO6jFL7qRHp89O7CHfG6mD0uM;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$NouO6jFL7qRHp89O7CHfG6mD0uM;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2406
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 2415
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$yTIuIImgAFK3eAYSmNsa3QUABJI;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$yTIuIImgAFK3eAYSmNsa3QUABJI;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V

    .line 2416
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V

    .line 2417
    sget v0, Lcom/android/systemui/R$id;->global_actions_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    .line 2418
    sget v0, Lcom/android/systemui/R$id;->global_actions_lock_message_container:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    .line 2420
    sget v0, Lcom/android/systemui/R$id;->global_actions_lock_message:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessage:Landroid/widget/TextView;

    .line 2422
    sget v0, Lcom/android/systemui/R$id;->global_actions_overflow_button:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2425
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2426
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Z9UkTqaFVk4ozoJ7CzVXkQK0Prs;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Z9UkTqaFVk4ozoJ7CzVXkQK0Prs;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2427
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2428
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2429
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2430
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2432
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2433
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 2434
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2435
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->global_actions_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2437
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2441
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeWalletView()V

    .line 2442
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2443
    new-instance v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2444
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    .line 2446
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initializeWalletView()V
    .locals 4

    .line 2302
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 2307
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_6

    .line 2310
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_1

    .line 2311
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    const/4 v2, 0x1

    .line 2312
    iput-boolean v2, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 2313
    iput v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1ow9Tff5C8hV6Jw2DGJgMWckX2s;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1ow9Tff5C8hV6Jw2DGJgMWckX2s;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-nez v1, :cond_4

    .line 2325
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_3

    .line 2326
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 2327
    iput-boolean v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 2333
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$lbXOC7P5ABcqDXbmJ8XA6X1E0WY;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$lbXOC7P5ABcqDXbmJ8XA6X1E0WY;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 2339
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    .line 2341
    sget v0, Lcom/android/systemui/R$id;->global_actions_wallet:I

    .line 2342
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2343
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2347
    iget-boolean v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsAvailable:Z

    if-nez v2, :cond_5

    .line 2348
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->global_actions_wallet_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2351
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mWalletViewController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object v2

    .line 2352
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2354
    sget v0, Lcom/android/systemui/R$id;->global_actions_grid_root:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_6

    .line 2356
    new-instance v0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1RYmYsH7EaEqXQvxS03WLknm2g4;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$1RYmYsH7EaEqXQvxS03WLknm2g4;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private isShowingControls()Z
    .locals 0

    .line 2293
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$b7BjyiDlA1YYZd2S_4WLEfoJbac(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method private synthetic lambda$createPowerOverflowPopup$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 2377
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-static {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->access$4800(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;I)V

    return-void
.end method

.method private synthetic lambda$createPowerOverflowPopup$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 2379
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;

    invoke-static {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;->access$4700(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyOverflowAdapter;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$dismiss$10(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2551
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2552
    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 2553
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2554
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$dismiss$11()V
    .locals 7

    .line 2545
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2546
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 2547
    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2548
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xe9

    .line 2549
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2550
    new-instance v3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Ek6BkPKyMC0u9aZcL5YtI6VPLwo;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Ek6BkPKyMC0u9aZcL5YtI6VPLwo;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2558
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v3}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v3

    .line 2559
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v1, 0x1

    aput v3, v5, v1

    const-string/jumbo v3, "translationX"

    .line 2560
    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2561
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x15e

    .line 2562
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2564
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object v3, v2, v1

    .line 2565
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2566
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2572
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 2575
    invoke-direct {p0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissOverflow(Z)V

    .line 2576
    invoke-direct {p0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPowerOptions(Z)V

    .line 2577
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz p0, :cond_0

    invoke-interface {p0, v6}, Lcom/android/systemui/controls/ui/ControlsUiController;->closeDialogs(Z)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$dismissForControlsActivity$12()V
    .locals 2

    .line 2583
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2584
    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$b7BjyiDlA1YYZd2S_4WLEfoJbac;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$b7BjyiDlA1YYZd2S_4WLEfoJbac;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/ControlsAnimations;->exitAnimation(Landroid/view/View;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private synthetic lambda$initializeLayout$5(Landroid/view/View;)V
    .locals 0

    .line 2403
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initializeLayout$6(Landroid/view/View;)V
    .locals 0

    .line 2404
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initializeLayout$7(Landroid/view/View;)V
    .locals 0

    .line 2426
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->showPowerOverflowMenu()V

    return-void
.end method

.method private synthetic lambda$initializeWalletView$0()V
    .locals 1

    .line 2320
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method private synthetic lambda$initializeWalletView$1()V
    .locals 2

    .line 2334
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method static synthetic lambda$initializeWalletView$2(Landroid/view/ViewGroup;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-lez p9, :cond_0

    if-eq p9, p5, :cond_0

    .line 2360
    new-instance p1, Landroid/transition/AutoTransition;

    invoke-direct {p1}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 p2, 0xfa

    .line 2361
    invoke-virtual {p1, p2, p3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object p1

    const/4 p2, 0x0

    .line 2362
    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

    .line 2363
    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$pdjB9IUZqjM8heY8C5-6yJKk6nA(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissForControlsActivity()V

    return-void
.end method

.method static synthetic lambda$show$8(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 2508
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p1

    .line 2509
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    .line 2510
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 2511
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result p2

    .line 2508
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2512
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private synthetic lambda$show$9(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 2525
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2526
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2527
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2528
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateGlobalDialogVisibility(FLandroid/view/View;)V

    return-void
.end method

.method private resetOrientation()V
    .locals 3

    .line 2649
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-eqz v0, :cond_0

    .line 2650
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iget-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    :cond_0
    const/4 v0, 0x1

    .line 2653
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    return-void
.end method

.method private setRotationSuggestionsEnabled(Z)V
    .locals 3

    .line 2638
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 2642
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2644
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private showControls(Lcom/android/systemui/controls/ui/ControlsUiController;)V
    .locals 2

    .line 2297
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 2298
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$pdjB9IUZqjM8heY8C5-6yJKk6nA;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$pdjB9IUZqjM8heY8C5-6yJKk6nA;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    return-void
.end method

.method private showPowerOverflowMenu()V
    .locals 1

    .line 2393
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->createPowerOverflowPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOverflowPopup:Landroid/widget/ListPopupWindow;

    .line 2394
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    .line 2478
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-nez v1, :cond_0

    return-void

    .line 2481
    :cond_0
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    .line 2482
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 2483
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2010

    .line 2484
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2487
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 2544
    new-instance v0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$vRv3b-wA1N9XtGe-t4Kxrmkqevk;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$vRv3b-wA1N9XtGe-t4Kxrmkqevk;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWithAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method dismissWithAnimation(Ljava/lang/Runnable;)V
    .locals 1

    .line 2589
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2592
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2593
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method hideLockMessage()V
    .locals 3

    .line 2700
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2707
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$createPowerOverflowPopup$3$GlobalActionsDialog$ActionsDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$createPowerOverflowPopup$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic lambda$createPowerOverflowPopup$4$GlobalActionsDialog$ActionsDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$createPowerOverflowPopup$4(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$dismiss$10$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismiss$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic lambda$dismiss$11$GlobalActionsDialog$ActionsDialog()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismiss$11()V

    return-void
.end method

.method public synthetic lambda$dismissForControlsActivity$12$GlobalActionsDialog$ActionsDialog()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$dismissForControlsActivity$12()V

    return-void
.end method

.method public synthetic lambda$initializeLayout$5$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeLayout$5(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initializeLayout$6$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeLayout$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initializeLayout$7$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeLayout$7(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initializeWalletView$0$GlobalActionsDialog$ActionsDialog()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeWalletView$0()V

    return-void
.end method

.method public synthetic lambda$initializeWalletView$1$GlobalActionsDialog$ActionsDialog()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$initializeWalletView$1()V

    return-void
.end method

.method public synthetic lambda$show$9$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$show$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 2

    .line 2658
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    .line 2660
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_0

    :cond_0
    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 2665
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRotate(II)V
    .locals 0

    .line 2693
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-eqz p1, :cond_0

    .line 2694
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mOnRotateCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2695
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v0, 0x1

    .line 2460
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2461
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2462
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 2464
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 2466
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    const/4 v1, 0x0

    .line 2467
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 2493
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2494
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method public refreshDialog()V
    .locals 3

    .line 2677
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissWallet()V

    const/4 v0, 0x1

    .line 2678
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissOverflow(Z)V

    .line 2679
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPowerOptions(Z)V

    .line 2680
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v0, :cond_0

    .line 2681
    invoke-interface {v0}, Lcom/android/systemui/controls/ui/ControlsUiController;->hide()V

    .line 2685
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    .line 2686
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 2687
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v0, :cond_1

    .line 2688
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$pdjB9IUZqjM8heY8C5-6yJKk6nA;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$pdjB9IUZqjM8heY8C5-6yJKk6nA;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 7

    .line 2499
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 2500
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 2501
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->getForceHasTopUi()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHadTopUi:Z

    .line 2502
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setForceHasTopUi(Z)V

    .line 2503
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    const v2, 0x8000

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 2504
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 2506
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2507
    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$gGrD18NurIYrIEMheLXEOrMsW9g;

    invoke-direct {v2, v1}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$gGrD18NurIYrIEMheLXEOrMsW9g;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2514
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsUiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    if-eqz v1, :cond_0

    .line 2515
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mControlsView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$pdjB9IUZqjM8heY8C5-6yJKk6nA;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$pdjB9IUZqjM8heY8C5-6yJKk6nA;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/controls/ui/ControlsUiController;->show(Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    .line 2518
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2519
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    .line 2520
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const-string v6, "alpha"

    .line 2521
    invoke-static {v3, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 2522
    sget-object v5, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xb7

    .line 2523
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2524
    new-instance v5, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Mn5dgXOyJqTgXX01TJijUyG303w;

    invoke-direct {v5, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Mn5dgXOyJqTgXX01TJijUyG303w;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2532
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContainer:Landroid/view/ViewGroup;

    new-array v5, v4, [F

    aput v1, v5, v2

    const/4 v1, 0x0

    aput v1, v5, v0

    const-string/jumbo v1, "translationX"

    .line 2533
    invoke-static {p0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2534
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 2535
    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2537
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v2

    aput-object p0, v4, v0

    .line 2538
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2539
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method showLockMessage()V
    .locals 3

    .line 2712
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const v1, 0x10803c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2713
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->control_primary_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2714
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2715
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLockMessageContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showPowerOptionsMenu()V
    .locals 2

    .line 2388
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyPowerOptionsAdapter;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsPowerDialog;->create(Landroid/content/Context;Landroid/widget/ListAdapter;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPowerOptionsDialog:Landroid/app/Dialog;

    .line 2389
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
