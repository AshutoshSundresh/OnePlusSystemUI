.class public Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "OpSystemUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDismissReceiver:Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    sget v0, Lcom/android/systemui/R$style;->Oneplus_Theme_Material_Dark_Dialog_Alert:I

    goto :goto_0

    .line 39
    :cond_0
    sget v0, Lcom/android/systemui/R$style;->Oneplus_Theme_Material_Light_Dialog_Alert:I

    .line 37
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->applyFlags(Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 52
    new-instance p1, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;

    invoke-direct {p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->mDismissReceiver:Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;

    return-void
.end method

.method public static applyFlags(Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 138
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e1

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/high16 v1, 0xa0000

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 142
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    .line 142
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object p0
.end method

.method public static setWindowOnTop(Landroid/app/Dialog;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7e1

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 131
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p0, v1

    .line 132
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 58
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->mDismissReceiver:Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->register()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    .line 64
    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->mDismissReceiver:Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->unregister()V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "</b>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\'#8D8D8D\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b><font color=\'#D8D8D8\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "</font></b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "</b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
