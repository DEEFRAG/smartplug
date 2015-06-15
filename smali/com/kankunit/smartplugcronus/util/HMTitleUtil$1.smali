.class Lcom/kankunit/smartplugcronus/util/HMTitleUtil$1;
.super Ljava/lang/Object;
.source "HMTitleUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/util/HMTitleUtil;->setTitle(Ljava/lang/String;Landroid/widget/PopupWindow;Landroid/widget/ImageButton;Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$1;->val$context:Landroid/app/Activity;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/HMTitleUtil$1;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 21
    return-void
.end method
