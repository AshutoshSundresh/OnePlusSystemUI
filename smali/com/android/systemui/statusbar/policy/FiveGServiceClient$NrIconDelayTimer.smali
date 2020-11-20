.class Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;
.super Landroid/os/CountDownTimer;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NrIconDelayTimer"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mStarted:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;JJ)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 148
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    const/4 p1, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    return p0
.end method

.method private onNoneNrIcon()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->this$0:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->access$000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;II)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelDelay(II)V
    .locals 3

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 182
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    const/4 v2, 0x1

    if-ne v1, p1, :cond_0

    const-string p1, "FiveGServiceClient"

    const-string v0, "delay canceled"

    .line 183
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 186
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    if-eq p1, p2, :cond_1

    const-string p1, "FiveGServiceClient"

    const-string p2, "found no dds delay, notify no icon right now"

    .line 187
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->onNoneNrIcon()V

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const-string p1, "FiveGServiceClient"

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancelDelay "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->reset()V

    .line 194
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_1

    :cond_2
    const-string p1, "FiveGServiceClient"

    const-string p2, "delay not started."

    .line 197
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onFinish()V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay complete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->onNoneNrIcon()V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->reset()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method

.method public declared-synchronized startDelay(I)V
    .locals 2

    monitor-enter p0

    .line 164
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    if-ne v0, p1, :cond_0

    const-string p1, "FiveGServiceClient"

    const-string v0, "delay in progress"

    .line 165
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    if-eqz v0, :cond_1

    const-string v0, "FiveGServiceClient"

    const-string v1, "delay in progress but interrupt with other slot, notify no icon"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->onNoneNrIcon()V

    :cond_1
    const-string v0, "FiveGServiceClient"

    const-string v1, "delay 10s to hide nr icon"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mStarted:Z

    .line 175
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$NrIconDelayTimer;->mPhoneId:I

    .line 176
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
