.class Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;
.super Ljava/lang/Object;
.source "AddSceneAboveListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 145
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/AddSceneActivity;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "operationType"

    const-string v3, "add"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$1(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;I)V

    .line 149
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method
