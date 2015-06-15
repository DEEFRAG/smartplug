.class Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$2;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 101
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResideMenu()Lcom/special/ResideMenu/ResideMenu;

    move-result-object v1

    .line 102
    .local v1, "menu":Lcom/special/ResideMenu/ResideMenu;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0
.end method
