.class public Lcom/kankunit/smartplugcronus/view/HelpActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;
    }
.end annotation


# instance fields
.field private appButton:Landroid/widget/ImageButton;

.field private beginconfigurebtn:Landroid/widget/ImageButton;

.field private devicetype:Ljava/lang/String;

.field private imgIdArray:[I

.field private mImageViews:[Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/HelpActivity;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f03007f

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "devicetype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->devicetype:Ljava/lang/String;

    .line 46
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "help==="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->devicetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 50
    const v2, 0x7f070221

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->beginconfigurebtn:Landroid/widget/ImageButton;

    .line 51
    const v2, 0x7f070220

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->appButton:Landroid/widget/ImageButton;

    .line 52
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->beginconfigurebtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 53
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->appButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 54
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->beginconfigurebtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/HelpActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HelpActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/HelpActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->appButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/HelpActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HelpActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/HelpActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f07021e

    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 73
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->devicetype:Ljava/lang/String;

    const-string v3, "mini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->devicetype:Ljava/lang/String;

    const-string v3, "ap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :cond_0
    new-array v2, v5, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->imgIdArray:[I

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->imgIdArray:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/HelpActivity$MyAdapter;-><init>(Lcom/kankunit/smartplugcronus/view/HelpActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 87
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 90
    return-void

    .line 76
    .end local v0    # "i":I
    :cond_1
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->imgIdArray:[I

    goto :goto_0

    .line 81
    .restart local v0    # "i":I
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->mImageViews:[Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 83
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->imgIdArray:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    nop

    :array_0
    .array-data 4
        0x7f020111
        0x7f020112
        0x7f020113
    .end array-data

    .line 76
    :array_1
    .array-data 4
        0x7f0201b2
        0x7f020112
        0x7f020113
    .end array-data
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 123
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 133
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->beginconfigurebtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->devicetype:Ljava/lang/String;

    const-string v1, "mini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->devicetype:Ljava/lang/String;

    const-string v1, "ap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->appButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->beginconfigurebtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/HelpActivity;->appButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
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
    .line 31
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 32
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 33
    return-void
.end method
