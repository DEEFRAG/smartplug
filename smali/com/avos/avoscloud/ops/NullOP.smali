.class public Lcom/avos/avoscloud/ops/NullOP;
.super Ljava/lang/Object;
.source "NullOP.java"

# interfaces
.implements Lcom/avos/avoscloud/ops/AVOp;


# static fields
.field public static INSTANCE:Lcom/avos/avoscloud/ops/NullOP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/avos/avoscloud/ops/NullOP;

    invoke-direct {v0}, Lcom/avos/avoscloud/ops/NullOP;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/ops/NullOP;->INSTANCE:Lcom/avos/avoscloud/ops/NullOP;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public apply(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;
    .locals 0
    .param p1, "obj"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 39
    return-object p1
.end method

.method public cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "__ALL_POSSIABLE_KEYS"

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 0
    .param p1, "other"    # Lcom/avos/avoscloud/ops/AVOp;

    .prologue
    .line 44
    return-object p1
.end method

.method public remove(I)Lcom/avos/avoscloud/ops/AVOp;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public type()Lcom/avos/avoscloud/ops/AVOp$OpType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Null:Lcom/avos/avoscloud/ops/AVOp$OpType;

    return-object v0
.end method
