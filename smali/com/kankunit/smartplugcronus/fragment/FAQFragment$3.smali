.class Lcom/kankunit/smartplugcronus/fragment/FAQFragment$3;
.super Ljava/lang/Object;
.source "FAQFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/FAQFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/FAQFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 99
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->getResideMenu()Lcom/special/ResideMenu/ResideMenu;

    move-result-object v1

    .line 100
    .local v1, "menu":Lcom/special/ResideMenu/ResideMenu;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0
.end method
