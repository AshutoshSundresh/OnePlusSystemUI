.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4052
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4052
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onDozeAmountChanged(FF)V
    .locals 1

    .line 4112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 4113
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 4114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    .line 4115
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$6500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkAmount(F)V

    .line 4116
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 7

    .line 4055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->goingToFullShade()Z

    move-result v0

    .line 4056
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    .line 4057
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 4059
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v6, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZZ)V

    .line 4060
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V

    .line 4062
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4063
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    if-eqz v5, :cond_1

    .line 4067
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    :cond_1
    const/4 v1, 0x2

    if-ne v2, v4, :cond_4

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_4

    .line 4073
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4076
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    if-ne p1, v1, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_1

    .line 4077
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    .line 4078
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    goto :goto_3

    :cond_4
    if-ne v2, v1, :cond_5

    if-ne p1, v4, :cond_5

    .line 4081
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 v0, 0x168

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V

    .line 4082
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    .line 4086
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 4087
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_3

    .line 4090
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4091
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p1

    if-eqz v5, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    if-eqz v5, :cond_7

    .line 4092
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    if-eq v2, p1, :cond_7

    .line 4093
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4094
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    .line 4098
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    if-eqz v5, :cond_8

    .line 4100
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 4104
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4106
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method
