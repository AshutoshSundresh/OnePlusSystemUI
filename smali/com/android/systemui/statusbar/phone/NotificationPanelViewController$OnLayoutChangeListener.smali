.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;
.super Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 4151
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/PanelViewController;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 4151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    const-string v0, "NVP#onLayout"

    .line 4156
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 4157
    invoke-super/range {p0 .. p9}, Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 4158
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p4

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V

    .line 4161
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/GridLayout;->setPivotX(F)V

    .line 4162
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p1

    const p2, 0x3eb0c000

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4163
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/keyguard/KeyguardStatusView;->getClockTextSize()F

    move-result p3

    mul-float/2addr p3, p2

    .line 4162
    invoke-virtual {p1, p3}, Landroid/widget/GridLayout;->setPivotY(F)V

    .line 4166
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    .line 4167
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 4168
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    int-to-float p2, p2

    .line 4169
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p5

    if-eqz p5, :cond_1

    move p5, p4

    goto :goto_1

    :cond_1
    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p5

    invoke-interface {p5}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p5

    :goto_1
    invoke-static {p3, p5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4170
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p3

    cmpl-float p2, p3, p2

    if-nez p2, :cond_2

    .line 4171
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 4173
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 4174
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 4175
    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p5

    add-int/2addr p3, p5

    .line 4174
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    .line 4177
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4178
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4179
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 4180
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 4181
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 4184
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 4185
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;II)V

    goto :goto_2

    .line 4187
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 4188
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V

    .line 4190
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 4191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    .line 4204
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4205
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$8800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 4206
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4207
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$11902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4210
    :cond_7
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method
