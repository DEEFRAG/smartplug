.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;
.super Ljava/lang/Object;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1174
    const/4 v3, 0x1

    .line 1175
    .local v3, "isEmpty":Z
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$9(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    .line 1176
    .local v4, "subBtnCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 1185
    :goto_1
    if-eqz v3, :cond_2

    .line 1186
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    const-string v7, "Remote control without buttons could not be saved"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1194
    :goto_2
    return-void

    .line 1177
    :cond_0
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->dragview:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$9(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1178
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "btn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1180
    const/4 v3, 0x0

    .line 1181
    goto :goto_1

    .line 1176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->savePannel()I
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$11(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I

    move-result v0

    .line 1190
    .local v0, "cpid":I
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    const-class v7, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1191
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "controlId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-virtual {v6, v2}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 1193
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->finish()V

    goto :goto_2
.end method
