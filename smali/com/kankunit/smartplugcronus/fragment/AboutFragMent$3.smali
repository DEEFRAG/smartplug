.class Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$3;
.super Ljava/lang/Object;
.source "AboutFragMent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 196
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0
.end method
