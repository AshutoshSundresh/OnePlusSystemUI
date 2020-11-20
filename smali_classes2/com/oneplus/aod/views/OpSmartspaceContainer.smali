.class public Lcom/oneplus/aod/views/OpSmartspaceContainer;
.super Landroid/widget/FrameLayout;
.source "OpSmartspaceContainer.java"


# instance fields
.field private mCacheListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/OpSmartspaceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/OpSmartspaceContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/views/OpSmartspaceContainer;->mCacheListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/oneplus/aod/views/OpSmartspaceContainer;->mCacheListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public removeAllOnAttachStateChangeListener()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/oneplus/aod/views/OpSmartspaceContainer;->mCacheListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    .line 43
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/oneplus/aod/views/OpSmartspaceContainer;->mCacheListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/oneplus/aod/views/OpSmartspaceContainer;->mCacheListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
