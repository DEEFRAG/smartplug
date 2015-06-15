.class public final enum Lcom/baidu/frontia/FrontiaQuery$SortOrder;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/FrontiaQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/frontia/FrontiaQuery$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

.field public static final enum DESC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

.field private static final synthetic a:[Lcom/baidu/frontia/FrontiaQuery$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    const-string v1, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/baidu/frontia/FrontiaQuery$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->ASC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    new-instance v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    const-string v1, "DESC"

    invoke-direct {v0, v1, v3}, Lcom/baidu/frontia/FrontiaQuery$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->DESC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    sget-object v1, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->ASC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->DESC:Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->a:[Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/frontia/FrontiaQuery$SortOrder;
    .locals 1

    const-class v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/baidu/frontia/FrontiaQuery$SortOrder;
    .locals 1

    sget-object v0, Lcom/baidu/frontia/FrontiaQuery$SortOrder;->a:[Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    invoke-virtual {v0}, [Lcom/baidu/frontia/FrontiaQuery$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/frontia/FrontiaQuery$SortOrder;

    return-object v0
.end method
