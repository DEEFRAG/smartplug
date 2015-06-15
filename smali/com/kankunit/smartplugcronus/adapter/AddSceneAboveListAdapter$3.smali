.class Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 160
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/AddSceneActivity;
    const-string v2, "edit"

    iput-object v2, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationType:Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$2(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)I

    move-result v2

    iput v2, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationIndex:I

    .line 162
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->map:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$3(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->currentIndex:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$2(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 163
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->clickList(Ljava/util/Map;)V

    .line 164
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->access$1(Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;I)V

    .line 165
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter$3;->this$0:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    .line 166
    return-void
.end method
