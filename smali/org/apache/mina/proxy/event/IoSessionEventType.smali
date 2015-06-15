.class public final enum Lorg/apache/mina/proxy/event/IoSessionEventType;
.super Ljava/lang/Enum;
.source "IoSessionEventType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/event/IoSessionEventType$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/mina/proxy/event/IoSessionEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

.field public static final enum OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29
    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

    new-instance v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v4, v6}, Lorg/apache/mina/proxy/event/IoSessionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    .line 28
    new-array v0, v6, [Lorg/apache/mina/proxy/event/IoSessionEventType;

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->$VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->$VALUES:[Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-virtual {v0}, [Lorg/apache/mina/proxy/event/IoSessionEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType$1;->$SwitchMap$org$apache$mina$proxy$event$IoSessionEventType:[I

    invoke-virtual {p0}, Lorg/apache/mina/proxy/event/IoSessionEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Event Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    const-string v0, "- CREATED event -"

    goto :goto_0

    .line 58
    :pswitch_1
    const-string v0, "- OPENED event -"

    goto :goto_0

    .line 60
    :pswitch_2
    const-string v0, "- IDLE event -"

    goto :goto_0

    .line 62
    :pswitch_3
    const-string v0, "- CLOSED event -"

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
