.class Lcom/android/systemui/statusbar/NotificationMediaManager$2;
.super Landroid/media/session/MediaController$Callback;
.source "NotificationMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->clearCache()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$302(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$400(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$100(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->findAndUpdateMediaNotifications()V

    :cond_1
    return-void
.end method
