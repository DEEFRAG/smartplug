.class Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;
.super Ljava/lang/Object;
.source "RemoteControlFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;)Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    .local v0, "controlId":I
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "mac"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "mac":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->adapterList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "dname"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "dname":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const-string v4, "Confirm"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 143
    const-string v4, "Deletes the selected device?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 144
    const-string v4, "Confirm"

    new-instance v5, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2$1;

    invoke-direct {v5, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/RemoteControlFragment$2;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 156
    const-string v4, "Cancel"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    const/4 v3, 0x1

    return v3
.end method
