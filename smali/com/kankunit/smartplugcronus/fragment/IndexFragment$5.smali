.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$5;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initMsgData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kankunit/smartplugcronus/model/MessageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kankunit/smartplugcronus/model/MessageModel;Lcom/kankunit/smartplugcronus/model/MessageModel;)I
    .locals 2
    .param p1, "o1"    # Lcom/kankunit/smartplugcronus/model/MessageModel;
    .param p2, "o2"    # Lcom/kankunit/smartplugcronus/model/MessageModel;

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kankunit/smartplugcronus/model/MessageModel;->getMsgDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/kankunit/smartplugcronus/model/MessageModel;

    check-cast p2, Lcom/kankunit/smartplugcronus/model/MessageModel;

    invoke-virtual {p0, p1, p2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$5;->compare(Lcom/kankunit/smartplugcronus/model/MessageModel;Lcom/kankunit/smartplugcronus/model/MessageModel;)I

    move-result v0

    return v0
.end method
