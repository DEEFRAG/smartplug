.class Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)I

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDragMode()V

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->getIndexGridView()Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 227
    .local v0, "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 229
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0201c3

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 230
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    return-void

    .line 223
    .end local v0    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$3;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->changeGridDragMode()V

    goto :goto_0
.end method
