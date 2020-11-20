.class Lcom/android/systemui/media/ResumeMediaBrowser$4;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/ResumeMediaBrowser;->testConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/ResumeMediaBrowser;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string v0, "ResumeMediaBrowser"

    const-string v1, "connected"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    .line 250
    invoke-static {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$100(Lcom/android/systemui/media/ResumeMediaBrowser;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onConnected()V

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :goto_1
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    const-string v0, "ResumeMediaBrowser"

    const-string v1, "failed"

    .line 265
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 2

    const-string v0, "ResumeMediaBrowser"

    const-string/jumbo v1, "suspended"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$4;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-static {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->access$200(Lcom/android/systemui/media/ResumeMediaBrowser;)Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    return-void
.end method
