.class Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    .line 343
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$6;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0
.end method
