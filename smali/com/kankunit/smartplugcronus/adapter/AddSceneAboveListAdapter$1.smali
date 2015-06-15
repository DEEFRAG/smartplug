.class Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;
.super Ljava/lang/Object;
.source "AddSceneAboveListAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

.field private final synthetic val$operationLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;->val$operationLayout:Landroid/view/View;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;->val$operationLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 130
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;->val$operationLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;->val$operationLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 132
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 133
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$1;->val$operationLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 126
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 123
    return-void
.end method
