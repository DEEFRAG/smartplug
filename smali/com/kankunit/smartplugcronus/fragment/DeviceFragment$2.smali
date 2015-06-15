.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
    .line 331
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "mac":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v2, "Confirm"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 335
    const-string v2, "Deletes the selected device?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 336
    const-string v2, "Confirm"

    new-instance v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;

    invoke-direct {v3, p0, v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 375
    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 378
    .end local v0    # "mac":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
