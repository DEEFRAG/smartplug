.class Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$2;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$2;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent$2;->val$activity:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 135
    return-void
.end method
