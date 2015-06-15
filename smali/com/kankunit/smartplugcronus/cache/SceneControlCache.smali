.class public Lcom/kankunit/smartplugcronus/cache/SceneControlCache;
.super Ljava/lang/Object;
.source "SceneControlCache.java"


# instance fields
.field private baseView:Landroid/view/View;

.field private scene_do_state:Landroid/widget/TextView;

.field private scene_do_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->baseView:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public getScene_do_state()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->scene_do_state:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->baseView:Landroid/view/View;

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->scene_do_state:Landroid/widget/TextView;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->scene_do_state:Landroid/widget/TextView;

    return-object v0
.end method

.method public getScene_do_title()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->scene_do_title:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->baseView:Landroid/view/View;

    const v1, 0x7f07035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->scene_do_title:Landroid/widget/TextView;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/cache/SceneControlCache;->scene_do_title:Landroid/widget/TextView;

    return-object v0
.end method
