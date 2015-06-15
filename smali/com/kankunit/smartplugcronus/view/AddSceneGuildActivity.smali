.class public Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "AddSceneGuildActivity.java"


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
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f0700ce

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 52
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneGuildActivity;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method
