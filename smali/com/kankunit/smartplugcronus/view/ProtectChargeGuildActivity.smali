.class public Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ProtectChargeGuildActivity.java"


# instance fields
.field private deviceType:Ljava/lang/String;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private moreButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f030044

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "devicetype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->deviceType:Ljava/lang/String;

    .line 41
    const v1, 0x7f0700ce

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 42
    const v1, 0x7f070132

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->moreButton:Landroid/widget/ImageButton;

    .line 43
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->moreButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$2;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->deviceType:Ljava/lang/String;

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f02035c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 69
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 71
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void

    .line 64
    .end local v0    # "a":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->deviceType:Ljava/lang/String;

    const-string v2, "k1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f02035d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->deviceType:Ljava/lang/String;

    const-string v2, "k2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ProtectChargeGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f02035e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
