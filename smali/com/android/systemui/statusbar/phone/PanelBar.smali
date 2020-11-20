.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBouncerShowing:Z

.field private mExpanded:Z

.field protected mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field protected mPanelFraction:F

.field private mState:I

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 214
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    const/4 p1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->resetViews(Z)V

    const/4 p1, 0x0

    .line 218
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    .line 219
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelPeek()V

    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 222
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_1
    return-void
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    return p0
.end method

.method public go(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public isClosed()Z
    .locals 0

    .line 235
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    return p0
.end method

.method public onClosingFinished()V
    .locals 0

    return-void
.end method

.method public onExpandingFinished()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 0

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 0

    return-void
.end method

.method public onPanelPeeked()V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 78
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "panel_bar_super_parcelable"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string/jumbo v0, "state"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    :cond_1
    return-void

    .line 79
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "panel_bar_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 72
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 139
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    .line 141
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-nez v1, :cond_2

    new-array p0, v2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "onTouch: no panel for touch at (%d,%d)"

    .line 151
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 155
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v1, p0, v3

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 160
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 166
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3
.end method

.method public onTrackingStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public panelEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 2

    .line 177
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 184
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    .line 185
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 189
    iget p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p2, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_2
    move p2, p1

    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 198
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_3

    const/4 p1, 0x2

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 201
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_4

    .line 202
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_4
    :goto_2
    return-void

    .line 178
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "frac cannot be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method

.method protected shouldPanelBeVisible()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p0, :cond_0

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

.method protected updateVisibility()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->shouldPanelBeVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
