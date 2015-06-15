.class public Lcom/kankunit/smartplugcronus/view/KShopActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "KShopActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private buybtn1:Landroid/widget/ImageButton;

.field private buybtn2:Landroid/widget/ImageButton;

.field private buybtn3:Landroid/widget/ImageButton;

.field private buybtn4:Landroid/widget/ImageButton;

.field private buybtn5:Landroid/widget/ImageButton;

.field private buybtn6:Landroid/widget/ImageButton;

.field private buybtn7:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    return-void
.end method

.method public initHongMiHeader()V
    .locals 5

    .prologue
    .line 116
    const v3, 0x7f070077

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    .local v2, "hongmi_header_title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c014c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v3, Lcom/kankunit/smartplugcronus/view/KShopActivity$1;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/KShopActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/KShopActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f070076

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 125
    .local v0, "hongmi_header_back":Landroid/widget/ImageButton;
    new-instance v3, Lcom/kankunit/smartplugcronus/view/KShopActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/KShopActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/KShopActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 133
    .local v1, "hongmi_header_rightbtn":Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 66
    const-string v2, ""

    .line 67
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 100
    :goto_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 70
    :pswitch_0
    const-string v2, "http://detail.tmall.com/item.htm?id=42297752228"

    .line 71
    goto :goto_0

    .line 74
    :pswitch_1
    const-string v2, "http://detail.tmall.com/item.htm?id=42298100841"

    .line 75
    goto :goto_0

    .line 78
    :pswitch_2
    const-string v2, "http://detail.tmall.com/item.htm?id=42298428347"

    .line 79
    goto :goto_0

    .line 82
    :pswitch_3
    const-string v2, "http://detail.tmall.com/item.htm?id=42298040495"

    .line 83
    goto :goto_0

    .line 86
    :pswitch_4
    const-string v2, "http://detail.tmall.com/item.htm?id=42298448055"

    .line 87
    goto :goto_0

    .line 90
    :pswitch_5
    const-string v2, "http://detail.tmall.com/item.htm?id=42253998333"

    .line 91
    goto :goto_0

    .line 94
    :pswitch_6
    const-string v2, "http://detail.tmall.com/item.htm?id=42298248520"

    .line 95
    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f07025c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 49
    const v0, 0x7f07025c

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn1:Landroid/widget/ImageButton;

    .line 50
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f07025d

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn2:Landroid/widget/ImageButton;

    .line 52
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f07025e

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn3:Landroid/widget/ImageButton;

    .line 54
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f07025f

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn4:Landroid/widget/ImageButton;

    .line 56
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn4:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f070260

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn5:Landroid/widget/ImageButton;

    .line 58
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn5:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f070261

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn6:Landroid/widget/ImageButton;

    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn6:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f070262

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn7:Landroid/widget/ImageButton;

    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/KShopActivity;->buybtn7:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/KShopActivity;->finish()V

    .line 42
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onPause()V

    .line 34
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onResume()V

    .line 30
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 31
    return-void
.end method
