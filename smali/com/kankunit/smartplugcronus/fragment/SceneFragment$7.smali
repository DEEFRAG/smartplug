.class Lcom/kankunit/smartplugcronus/fragment/SceneFragment$7;
.super Ljava/lang/Object;
.source "SceneFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->changeGridDeleteable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    .line 491
    .line 492
    const v1, 0x7f07024f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 491
    check-cast v0, Landroid/widget/ImageView;

    .line 493
    .local v0, "iv":Landroid/widget/ImageView;
    if-nez p3, :cond_0

    .line 503
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 497
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    const-string v2, "1"

    # invokes: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->updateData(ILjava/lang/String;)V
    invoke-static {v1, p3, v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$21(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;ILjava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    const-string v2, "0"

    # invokes: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->updateData(ILjava/lang/String;)V
    invoke-static {v1, p3, v2}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$21(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;ILjava/lang/String;)V

    goto :goto_0
.end method
