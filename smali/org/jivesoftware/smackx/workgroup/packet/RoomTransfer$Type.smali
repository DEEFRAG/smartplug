.class public final enum Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;
.super Ljava/lang/Enum;
.source "RoomTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

.field public static final enum queue:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

.field public static final enum user:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

.field public static final enum workgroup:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    const-string v1, "user"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->user:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    .line 136
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    const-string v1, "queue"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->queue:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    .line 140
    new-instance v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    const-string v1, "workgroup"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->workgroup:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    sget-object v1, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->user:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->queue:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->workgroup:Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->$VALUES:[Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->$VALUES:[Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/workgroup/packet/RoomTransfer$Type;

    return-object v0
.end method
