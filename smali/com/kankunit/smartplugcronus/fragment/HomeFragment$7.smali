.class Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;)V

    .line 363
    const-wide/16 v3, 0xc8

    .line 349
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 367
    check-cast v0, Landroid/widget/Button;

    .line 368
    .local v0, "btn":Landroid/widget/Button;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 369
    const v1, 0x7f0201ce

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 370
    sget-object v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 371
    sget-object v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneBtn:Landroid/widget/Button;

    const v2, 0x7f0201d1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 373
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    const v3, 0x7f0701aa

    invoke-virtual {v1, v2, v3}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->replaceFragment(Landroid/support/v4/app/Fragment;I)V

    .line 375
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$7;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;I)V

    .line 377
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_0
    return-void
.end method
