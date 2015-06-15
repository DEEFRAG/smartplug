.class public Lcom/kankunit/smartplugcronus/view/AboutActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "AboutActivity.java"


# instance fields
.field private about_ver:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/AboutActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 25
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AboutActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/AboutActivity;->about_ver:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AboutActivity;->about_ver:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/ConfigUtil;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 37
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 33
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 34
    return-void
.end method
