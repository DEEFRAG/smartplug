.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$4;
.super Ljava/lang/Object;
.source "ForgetPasswordStep2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity$4;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep2Activity;->finish()V

    .line 199
    return-void
.end method
