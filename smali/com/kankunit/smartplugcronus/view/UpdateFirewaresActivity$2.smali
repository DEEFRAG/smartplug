.class Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;
.super Ljava/lang/Object;
.source "UpdateFirewaresActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "v"    # Landroid/view/View;
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
    .line 90
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v8, 0x7f0701ef

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 91
    .local v5, "firewaretitle":Landroid/widget/TextView;
    const v8, 0x7f0701f5

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    .local v2, "fire_old":Landroid/widget/TextView;
    const v8, 0x7f0701f7

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, "fire_new":Landroid/widget/TextView;
    const v8, 0x7f0701f8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 94
    .local v4, "fireware_type":Landroid/widget/TextView;
    const v8, 0x7f0701f6

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, "fireware_mac":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "firewarttype":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "firewaretitle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v8, "firewareold"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v8, "firewarenew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v8, "firewaretype"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v8, "mac"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v8, "k2"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 103
    const-string v8, "sm"

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->sm:Ljava/lang/String;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->access$0(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    const-class v9, Lcom/kankunit/smartplugcronus/view/UpdateFirewareDetailActivity;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    invoke-virtual {v8, v7}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void

    .line 104
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v8, "mini_w"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 105
    const-string v8, "sm"

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->miniSm:Ljava/lang/String;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    const-string v8, "mini_b"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 107
    const-string v8, "sm"

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->miniBlackSm:Ljava/lang/String;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
