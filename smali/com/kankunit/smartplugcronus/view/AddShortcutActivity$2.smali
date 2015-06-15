.class Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;
.super Ljava/lang/Object;
.source "AddShortcutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->initView()V
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 209
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "click position is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    const v1, 0x7f07024d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/ImageView;

    .line 214
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 216
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    const-string v2, "0"

    # invokes: Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->updateData(ILjava/lang/String;)V
    invoke-static {v1, p3, v2}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;ILjava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;

    const/4 v2, 0x0

    # invokes: Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->updateData(ILjava/lang/String;)V
    invoke-static {v1, p3, v2}, Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddShortcutActivity;ILjava/lang/String;)V

    goto :goto_0
.end method
