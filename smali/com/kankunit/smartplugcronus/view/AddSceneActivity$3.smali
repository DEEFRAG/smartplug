.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->initEvent()V
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 463
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    const-string v2, "add"

    iput-object v2, v1, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->operationType:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->behindList:Ljava/util/List;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$5(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 465
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->clickList(Ljava/util/Map;)V

    .line 466
    return-void
.end method
