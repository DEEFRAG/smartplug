.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->contractContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 790
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$10(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Z)V

    .line 791
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$11(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Z)V

    .line 792
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 793
    .local v0, "fLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 794
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLeft:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$15(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 795
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 796
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$12;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 786
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 782
    return-void
.end method
