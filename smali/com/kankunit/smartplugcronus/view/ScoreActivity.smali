.class public Lcom/kankunit/smartplugcronus/view/ScoreActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ScoreActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    const v2, 0x7f0300cf

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->setContentView(I)V

    .line 45
    const v2, 0x7f07035f

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 46
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    const v2, 0x7f070360

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 47
    .local v0, "aboutscore":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/kankunit/smartplugcronus/view/ScoreActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/ScoreActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ScoreActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v2, Lcom/kankunit/smartplugcronus/view/ScoreActivity$2;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/ScoreActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ScoreActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ScoreActivity;->finish()V

    .line 34
    :cond_0
    return v2
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
