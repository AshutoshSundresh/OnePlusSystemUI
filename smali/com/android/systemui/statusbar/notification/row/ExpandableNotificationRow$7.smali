.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$7;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->animateShowingPublic(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hiddenView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0

    .line 2645
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$7;->val$hiddenView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2648
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$7;->val$hiddenView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
