.class Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;
.super Ljava/lang/Object;
.source "AccountManagerFragMent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

.field private final synthetic val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget v0, v0, Lcom/kankunit/smartplugcronus/view/MenuActivity;->accountFlag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 151
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$3;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0
.end method
