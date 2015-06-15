.class Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$2;
.super Ljava/lang/Object;
.source "MipcaActivityCapture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$2;->this$0:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture$2;->this$0:Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/customview/MipcaActivityCapture;->finish()V

    .line 64
    return-void
.end method
