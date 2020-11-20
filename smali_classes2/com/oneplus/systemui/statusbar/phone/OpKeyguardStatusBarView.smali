.class public Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "OpKeyguardStatusBarView.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;


# instance fields
.field private mCarrierLabel:Landroid/widget/TextView;

.field private mHighlightHintView:Landroid/view/View;

.field private mSystemIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 74
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 83
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->highlighthintview:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    const/16 v1, 0x3e9

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    sget v0, Lcom/android/systemui/R$id;->keyguard_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 5

    .line 91
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    .line 92
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result v1

    .line 94
    invoke-interface {v0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->showOvalLayout()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mSystemIcons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpKeyguardStatusBarView;->mHighlightHintView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
