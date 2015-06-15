.class public final enum Lcom/tencent/qc/stat/event/EventType;
.super Ljava/lang/Enum;
.source "ProGuard"


# static fields
.field public static final enum a:Lcom/tencent/qc/stat/event/EventType;

.field public static final enum b:Lcom/tencent/qc/stat/event/EventType;

.field public static final enum c:Lcom/tencent/qc/stat/event/EventType;

.field public static final enum d:Lcom/tencent/qc/stat/event/EventType;

.field public static final enum e:Lcom/tencent/qc/stat/event/EventType;

.field private static final synthetic g:[Lcom/tencent/qc/stat/event/EventType;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 17
    new-instance v0, Lcom/tencent/qc/stat/event/EventType;

    const-string v1, "PAGE_VIEW"

    invoke-direct {v0, v1, v6, v3}, Lcom/tencent/qc/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/event/EventType;->a:Lcom/tencent/qc/stat/event/EventType;

    .line 21
    new-instance v0, Lcom/tencent/qc/stat/event/EventType;

    const-string v1, "SESSION_ENV"

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/qc/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/event/EventType;->b:Lcom/tencent/qc/stat/event/EventType;

    .line 25
    new-instance v0, Lcom/tencent/qc/stat/event/EventType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/qc/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/event/EventType;->c:Lcom/tencent/qc/stat/event/EventType;

    .line 32
    new-instance v0, Lcom/tencent/qc/stat/event/EventType;

    const-string v1, "CUSTOM"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/qc/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/event/EventType;->d:Lcom/tencent/qc/stat/event/EventType;

    .line 37
    new-instance v0, Lcom/tencent/qc/stat/event/EventType;

    const-string v1, "ADDITION"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/qc/stat/event/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qc/stat/event/EventType;->e:Lcom/tencent/qc/stat/event/EventType;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/qc/stat/event/EventType;

    sget-object v1, Lcom/tencent/qc/stat/event/EventType;->a:Lcom/tencent/qc/stat/event/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qc/stat/event/EventType;->b:Lcom/tencent/qc/stat/event/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qc/stat/event/EventType;->c:Lcom/tencent/qc/stat/event/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qc/stat/event/EventType;->d:Lcom/tencent/qc/stat/event/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qc/stat/event/EventType;->e:Lcom/tencent/qc/stat/event/EventType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tencent/qc/stat/event/EventType;->g:[Lcom/tencent/qc/stat/event/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/tencent/qc/stat/event/EventType;->f:I

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/tencent/qc/stat/event/EventType;->f:I

    return v0
.end method
