.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$2:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$2:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$3:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$FMcYcqx6JxHHSZHrMeuI2W1DjZY;->f$4:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$openGuts$11$NotificationGutsManager(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method
