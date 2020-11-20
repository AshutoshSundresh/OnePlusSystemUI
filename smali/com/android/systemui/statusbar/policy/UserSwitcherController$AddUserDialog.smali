.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;
.super Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddUserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 1

    .line 974
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 975
    invoke-direct {p0, p2}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 976
    sget p1, Lcom/android/systemui/R$string;->user_add_user_title:I

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setTitle(I)V

    .line 977
    sget p1, Lcom/android/systemui/R$string;->user_add_user_message_short:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x1040000

    .line 979
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    .line 978
    invoke-virtual {p0, v0, p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x104000a

    .line 981
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    .line 980
    invoke-virtual {p0, p2, p1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 986
    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    return-void
.end method

.method private synthetic lambda$onClick$0()V
    .locals 4

    const-string v0, "UserSwitcherController"

    const-string/jumbo v1, "switchTo:createUser:START"

    .line 1015
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->user_new_user_name:I

    .line 1017
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1016
    invoke-virtual {v2, v1, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string/jumbo v2, "switchTo:createUser:END"

    .line 1018
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    .line 1024
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1025
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 1026
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1025
    invoke-static {v1, v0, v3}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/drawable/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1027
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v0, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1028
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$UserSwitcherController$AddUserDialog()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->lambda$onClick$0()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 993
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 996
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1014
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$AddUserDialog$UJ4gjew3m2acKcuXg9rmLG6wjI8;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$UserSwitcherController$AddUserDialog$UJ4gjew3m2acKcuXg9rmLG6wjI8;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
