.class Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;
.super Ljava/lang/Object;
.source "AddDelayMiniRepeatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "index"    # I
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
    .line 72
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)[Z

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)[Z

    move-result-object v1

    const/4 v2, 0x1

    aput-boolean v2, v1, p3

    .line 77
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->doSave()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)V

    .line 78
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->isCheck:[Z
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddDelayMiniRepeatActivity;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
