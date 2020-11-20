.class public Lcom/android/systemui/statusbar/phone/WLBDetailView;
.super Lcom/android/systemui/qs/WLBVerticalLayoutManager;
.source "WLBDetailView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/systemui/statusbar/phone/WLBDetailView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/WLBVerticalLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/statusbar/phone/WLBDetailView;
    .locals 1

    .line 46
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->qs_wlb_detail_panel:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/WLBDetailView;

    return-object p0
.end method


# virtual methods
.method public createAndSetAdapter(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/WLBSwitchController;Lcom/android/systemui/statusbar/phone/WLBDetailView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->mAdapter:Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;

    .line 41
    invoke-static {p0, v0}, Lcom/android/systemui/qs/WLBVerticalLayoutManager$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 42
    const-class p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setDetailViewCallBack(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBControllerCallbacks;)V

    return-void
.end method

.method public hideStatusBarIcon()V
    .locals 0

    return-void
.end method

.method public onExpansionChanged(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->mAdapter:Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->updateExpansion(F)V

    :cond_0
    return-void
.end method

.method public onWLBModeChanged(I)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->mAdapter:Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->updateUI(I)V

    :cond_0
    return-void
.end method

.method public refreshAdapter(I)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->mAdapter:Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->updateActiveMode(IZ)V

    return-void
.end method

.method public setIsFullyExpanded(Z)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView;->mAdapter:Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->setFullyExpanded(Z)V

    :cond_0
    return-void
.end method
