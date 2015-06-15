.class Lcom/kankunit/smartplugcronus/fragment/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->shadowlayer:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 93
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResideMenu()Lcom/special/ResideMenu/ResideMenu;

    move-result-object v1

    .line 94
    .local v1, "menu":Lcom/special/ResideMenu/ResideMenu;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0
.end method
