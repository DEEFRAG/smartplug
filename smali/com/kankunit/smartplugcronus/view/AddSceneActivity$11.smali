.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendContent()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v4, 0x1

    .line 750
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$10(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Z)V

    .line 751
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$11(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;Z)V

    .line 752
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 753
    .local v1, "fLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 754
    .local v2, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayoutWidth:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$13(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 755
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 756
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$12(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$14(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$14(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 759
    .local v0, "a":Landroid/graphics/drawable/Drawable;
    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 760
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$14(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 745
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 741
    return-void
.end method
