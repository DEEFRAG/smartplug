.class Lcom/kankunit/smartplugcronus/fragment/MessageFragment$3;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
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
    .line 108
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0702db

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 109
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/view/WebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/MessageFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/MessageFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/MessageFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/MessageFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
