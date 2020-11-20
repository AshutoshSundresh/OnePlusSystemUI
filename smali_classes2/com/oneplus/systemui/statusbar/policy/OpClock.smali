.class public Lcom/oneplus/systemui/statusbar/policy/OpClock;
.super Landroid/widget/TextView;
.source "OpClock.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController$OnHighlightHintStateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlwaysVisible:Z

.field protected mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->Clock:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->Clock_alwaysVisible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mAlwaysVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    const-class p1, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    return-void

    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw p0
.end method

.method private getShowSeconds()Z
    .locals 2

    .line 163
    const-class v0, Lcom/android/systemui/statusbar/policy/Clock;

    const-string v1, "mShowSeconds"

    invoke-static {v0, p0, v1}, Lcom/oneplus/util/OpReflectionUtils;->getValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private updateShowSeconds()V
    .locals 3

    .line 158
    const-class v0, Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateShowSeconds"

    invoke-static {v0, p0, v2, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeVoid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 90
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 99
    const-class v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    .line 120
    sget-object v0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->TAG:Ljava/lang/String;

    const-string v1, "onHighlightHintStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;->updateShowSeconds()V

    return-void
.end method

.method protected opShowSeconds()Z
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/oneplus/systemui/statusbar/policy/OpClock;->mAlwaysVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/systemui/statusbar/policy/OpClock;->getShowSeconds()Z

    move-result p0

    if-eqz p0, :cond_1

    const-class p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;

    invoke-interface {p0}, Lcom/oneplus/systemui/statusbar/phone/OpHighlightHintController;->isHighLightHintShow()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected setTextWithOpStyle(Ljava/lang/CharSequence;)V
    .locals 6

    const/16 v0, 0x11

    .line 127
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move v3, v2

    .line 131
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    add-int/lit8 p1, v3, 0x1

    const-string v4, "\u2236"

    .line 133
    invoke-virtual {v1, v3, p1, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v3, v2

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    .line 148
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v3, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 152
    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
