.class Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;
.super Ljava/lang/Object;
.source "RegisterStep1Activity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->fetchauthcodebtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->access$6(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    invoke-static {v0, p2}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->access$7(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;Z)V

    .line 132
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->fetchauthcodebtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->access$6(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
