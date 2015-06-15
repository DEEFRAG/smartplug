.class Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;
.super Ljava/lang/Object;
.source "DeviceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

.field private final synthetic val$userInfo:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->val$userInfo:Landroid/content/SharedPreferences;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->hasMusic:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$9(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->val$userInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasMusic"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$10(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020321

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 332
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-static {v0, v2}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$11(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V

    .line 338
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->val$userInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasMusic"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->music_btn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$10(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020322

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 336
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$11(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Z)V

    goto :goto_0
.end method
