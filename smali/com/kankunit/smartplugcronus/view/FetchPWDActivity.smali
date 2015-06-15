.class public Lcom/kankunit/smartplugcronus/view/FetchPWDActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "FetchPWDActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/FetchPWDActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 31
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/FetchPWDActivity;->setContentView(I)V

    .line 33
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 25
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 20
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 21
    return-void
.end method
