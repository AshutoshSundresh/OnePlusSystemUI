.class public Lcom/oneplus/aod/bg/OpAodCanvas;
.super Landroid/view/View;
.source "OpAodCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;
    }
.end annotation


# instance fields
.field private mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

.field private mIsFirstAlarm:Z

.field private mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

.field private mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/bg/OpAodCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/bg/OpAodCanvas;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    new-instance p2, Lcom/oneplus/aod/bg/OpAodCanvas$2;

    invoke-direct {p2, p0}, Lcom/oneplus/aod/bg/OpAodCanvas$2;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    .line 53
    new-instance p2, Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    invoke-direct {p2, p1}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/bg/OpAodCanvas;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->shouldTurnOnAodGesture()V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/bg/OpAodCanvas;Landroid/os/Bundle;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/bg/OpAodCanvas;->onChange(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/bg/OpAodCanvas;Z)Lcom/oneplus/aod/bg/IBgPaint;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/aod/bg/OpAodCanvas;->choosePaint(Z)Lcom/oneplus/aod/bg/IBgPaint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/bg/OpAodCanvas;Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/bg/OpAodCanvas;->setupPaint(Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/bg/OpAodCanvas;)Lcom/oneplus/aod/utils/OpCanvasAodHelper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/bg/OpAodCanvas;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private choosePaint(Z)Lcom/oneplus/aod/bg/IBgPaint;
    .locals 0

    if-eqz p1, :cond_0

    .line 200
    new-instance p0, Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-direct {p0}, Lcom/oneplus/aod/bg/OpSketchPaint;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onChange(Landroid/os/Bundle;Z)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->saveCanvasAodParams(Landroid/os/Bundle;ZLcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setupPaint(Lcom/oneplus/aod/bg/IBgPaint;Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/oneplus/aod/bg/IBgPaint;->release()V

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    .line 172
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Paint class= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " attached= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAodCanvas"

    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    .line 177
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    invoke-interface {p1, p0}, Lcom/oneplus/aod/bg/IBgPaint;->setup(Landroid/view/View;)V

    .line 178
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    instance-of v0, p1, Lcom/oneplus/aod/bg/OpSketchPaint;

    if-eqz v0, :cond_2

    .line 179
    check-cast p1, Lcom/oneplus/aod/bg/OpSketchPaint;

    invoke-virtual {p1, p2}, Lcom/oneplus/aod/bg/OpSketchPaint;->setupContour(Lcom/oneplus/aod/utils/OpCanvasAodHelper$Data;)V

    .line 181
    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    iget p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mWidth:I

    iget v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHeight:I

    invoke-interface {p1, p2, v0}, Lcom/oneplus/aod/bg/IBgPaint;->onSizeChanged(II)V

    .line 184
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method private shouldTurnOnAodGesture()V
    .locals 1

    .line 206
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Lcom/oneplus/aod/OpAodUtils;->shouldTurnOnAodGesture(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public burnInProtect()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    .line 115
    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->burnInProtect()V

    :cond_0
    return-void
.end method

.method public disable()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "disable"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/oneplus/aod/bg/OpAodCanvas;->onChange(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public genAodDisappearAnimation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    .line 160
    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->genAodDisappearAnimation()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mIsFirstAlarm:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0, p1}, Lcom/oneplus/aod/bg/IBgPaint;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 66
    iput p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mWidth:I

    .line 67
    iput p2, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHeight:I

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    .line 69
    invoke-interface {p0, p1, p2}, Lcom/oneplus/aod/bg/IBgPaint;->onSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mIsFirstAlarm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mIsFirstAlarm:Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas;->burnInProtect()V

    :goto_0
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitched "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAodCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHelper:Lcom/oneplus/aod/utils/OpCanvasAodHelper;

    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mListener:Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;

    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/oneplus/aod/utils/OpCanvasAodHelper;->loadFromCache(Lcom/oneplus/aod/utils/OpCanvasAodHelper$OnBitmapHandleDoneListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/bg/OpAodCanvas$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/bg/OpAodCanvas$1;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "recover"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mIsFirstAlarm:Z

    .line 122
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->recover()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "release"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->unregister()V

    .line 138
    iget-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lcom/oneplus/aod/bg/IBgPaint;->release()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "OpAodCanvas"

    const-string v1, "reset"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 94
    iget-object v1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v1}, Lcom/oneplus/aod/bg/IBgPaint;->reset()V

    goto :goto_0

    :cond_0
    const-string v1, "reset: bg paint is null!!!"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-virtual {p0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->register()V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;-><init>(Lcom/oneplus/aod/bg/OpAodCanvas;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mObserver:Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;

    .line 59
    invoke-virtual {v0}, Lcom/oneplus/aod/bg/OpAodCanvas$AodBgObserver;->register()V

    return-void
.end method

.method public userActivityInAlwaysOn(Ljava/lang/String;)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userActivityInAlwaysOn: reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAodCanvas"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mIsFirstAlarm:Z

    .line 130
    iget-object p0, p0, Lcom/oneplus/aod/bg/OpAodCanvas;->mBgPaint:Lcom/oneplus/aod/bg/IBgPaint;

    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0}, Lcom/oneplus/aod/bg/IBgPaint;->userActivityInAlwaysOn()V

    :cond_0
    return-void
.end method
