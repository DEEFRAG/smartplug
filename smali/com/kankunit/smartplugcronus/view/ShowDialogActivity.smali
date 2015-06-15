.class public Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ShowDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v3, 0x7f030061

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;->setContentView(I)V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 30
    const-string v3, "img"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "img":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    const v4, 0x7f0c0249

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 34
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 35
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 37
    const-string v4, "Confirm"

    new-instance v5, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity$1;

    invoke-direct {v5, p0}, Lcom/kankunit/smartplugcronus/view/ShowDialogActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ShowDialogActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 43
    .local v0, "alertDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 20
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 16
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 17
    return-void
.end method
