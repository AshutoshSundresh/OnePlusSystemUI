.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHotspotChanged(ZI)V
    .locals 4

    .line 634
    invoke-static {}, Lcom/android/systemui/util/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 667
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot:I

    goto :goto_0

    .line 664
    :pswitch_0
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_10:I

    goto :goto_0

    .line 661
    :pswitch_1
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_9:I

    goto :goto_0

    .line 658
    :pswitch_2
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_8:I

    goto :goto_0

    .line 655
    :pswitch_3
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_7:I

    goto :goto_0

    .line 652
    :pswitch_4
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_6:I

    goto :goto_0

    .line 649
    :pswitch_5
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_5:I

    goto :goto_0

    .line 646
    :pswitch_6
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_4:I

    goto :goto_0

    .line 643
    :pswitch_7
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_3:I

    goto :goto_0

    .line 640
    :pswitch_8
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_2:I

    goto :goto_0

    .line 637
    :pswitch_9
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_hotspot_1:I

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 670
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->accessibility_status_bar_hotspot:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-interface {v0, v1, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 673
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHotspotChanged(ZII)V
    .locals 0

    .line 677
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    .line 678
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method
