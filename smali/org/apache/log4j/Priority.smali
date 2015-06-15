.class public Lorg/apache/log4j/Priority;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_INT:I = -0x80000000

.field public static final DEBUG:Lorg/apache/log4j/Priority;

.field public static final DEBUG_INT:I = 0x2710

.field public static final ERROR:Lorg/apache/log4j/Priority;

.field public static final ERROR_INT:I = 0x9c40

.field public static final FATAL:Lorg/apache/log4j/Priority;

.field public static final FATAL_INT:I = 0xc350

.field public static final INFO:Lorg/apache/log4j/Priority;

.field public static final INFO_INT:I = 0x4e20

.field public static final OFF_INT:I = 0x7fffffff

.field public static final WARN:Lorg/apache/log4j/Priority;

.field public static final WARN_INT:I = 0x7530


# instance fields
.field transient level:I

.field transient levelStr:Ljava/lang/String;

.field transient syslogEquivalent:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0xc350

    const-string v2, "FATAL"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    new-instance v0, Lorg/apache/log4j/Level;

    const v1, 0x9c40

    const-string v2, "ERROR"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x7530

    const-string v2, "WARN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->WARN:Lorg/apache/log4j/Priority;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    new-instance v0, Lorg/apache/log4j/Level;

    const/16 v1, 0x2710

    const-string v2, "DEBUG"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/log4j/Priority;->level:I

    const-string v0, "DEBUG"

    iput-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/log4j/Priority;->level:I

    iput-object p2, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    iput p3, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    return-void
.end method

.method public static getAllPossiblePriorities()[Lorg/apache/log4j/Priority;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/log4j/Priority;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/log4j/Priority;->FATAL:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/log4j/Priority;->ERROR:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/log4j/Priority;->INFO:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static toPriority(I)Lorg/apache/log4j/Priority;
    .locals 1

    sget-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    invoke-static {p0, v0}, Lorg/apache/log4j/Priority;->toPriority(ILorg/apache/log4j/Priority;)Lorg/apache/log4j/Priority;

    move-result-object v0

    return-object v0
.end method

.method public static toPriority(ILorg/apache/log4j/Priority;)Lorg/apache/log4j/Priority;
    .locals 1

    check-cast p1, Lorg/apache/log4j/Level;

    invoke-static {p0, p1}, Lorg/apache/log4j/Level;->toLevel(ILorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toPriority(Ljava/lang/String;)Lorg/apache/log4j/Priority;
    .locals 1

    invoke-static {p0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public static toPriority(Ljava/lang/String;Lorg/apache/log4j/Priority;)Lorg/apache/log4j/Priority;
    .locals 1

    check-cast p1, Lorg/apache/log4j/Level;

    invoke-static {p0, p1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/apache/log4j/Priority;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/log4j/Priority;

    iget v1, p0, Lorg/apache/log4j/Priority;->level:I

    iget v2, p1, Lorg/apache/log4j/Priority;->level:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getSyslogEquivalent()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/Priority;->syslogEquivalent:I

    return v0
.end method

.method public isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z
    .locals 2

    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    iget v1, p1, Lorg/apache/log4j/Priority;->level:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toInt()I
    .locals 1

    iget v0, p0, Lorg/apache/log4j/Priority;->level:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/log4j/Priority;->levelStr:Ljava/lang/String;

    return-object v0
.end method
