.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDeleteable(Z)V
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
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

.field private final synthetic val$fIsCancel:Z


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iput-boolean p2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->val$fIsCancel:Z

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 1285
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f070253

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1286
    .local v2, "shortcutTypeTv":Landroid/widget/TextView;
    if-eqz p3, :cond_0

    .line 1289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1290
    const v3, 0x7f07024d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1291
    .local v0, "iv":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 1294
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->val$fIsCancel:Z

    if-eqz v3, :cond_1

    .line 1295
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 1296
    .local v1, "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    .line 1311
    .end local v0    # "iv":Landroid/widget/ImageView;
    .end local v1    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    :cond_0
    :goto_0
    return-void

    .line 1298
    .restart local v0    # "iv":Landroid/widget/ImageView;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const-string v4, "1"

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->updateData(ILjava/lang/String;)V
    invoke-static {v3, p3, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$33(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;ILjava/lang/String;)V

    goto :goto_0

    .line 1302
    :cond_2
    iget-boolean v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->val$fIsCancel:Z

    if-eqz v3, :cond_3

    .line 1303
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    .line 1304
    .restart local v1    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1306
    .end local v1    # "sga":Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$18;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    const-string v4, "0"

    # invokes: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->updateData(ILjava/lang/String;)V
    invoke-static {v3, p3, v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$33(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;ILjava/lang/String;)V

    goto :goto_0
.end method
