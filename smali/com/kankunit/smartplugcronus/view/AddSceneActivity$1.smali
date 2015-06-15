.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->loadListData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "i":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 286
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Bedroom"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    return-void

    .line 287
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020376

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 289
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Study"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02037a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 292
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Study 2"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02037e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 295
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Living room"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020382

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 298
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "Bedroom 2"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
